#!/usr/bin/env bash
set -o verbose
# note the assumptions made by this script:
# - virtual environment is set up in /var/www/venv
# - it will run in ~/bin/ucjeps_qc
# - it will run at the beginning of a month and report on the previous month.
# - monthly reports will be retained forever..this script does not groom them.
# - config file ucjepsProd.cfg exists with the needed paramaters.
# - a single argument is required: the email to send the report to.
#
cd ~/bin/ucjeps_qc
BMUDIR=/var/cspace/ucjeps/bmu
ls ${BMUDIR} | grep -v ".csv" | grep -v ".log" | grep -v "lost+found" > imagesinbmu.csv
rdate=`date +%Y-%m-%d`
REPORT=image_qc_report-${rdate}
time python3 checkBlobs.py file ${BMUDIR} imagesinbmu.csv $REPORT.csv
perl -ne '@x = split /\t/; print if $x[1] eq "False"; ' $REPORT.csv > bad.temp
head -1 $REPORT.csv | cat - bad.temp | perl -pe 's/\r//g' > $REPORT.problems.csv
rm bad.temp
all=`wc -l $REPORT.csv | cut -f1 -d" "`
bad=`wc -l $REPORT.problems.csv | cut -f1 -d" "`
all=$((all-1))
bad=$((bad-1))
echo "bad: $bad :: all: $all"
gzip -f $REPORT.csv
echo "Report for $rdate: $all images, $bad problems, see attached." | mail -A $REPORT.problems.csv -A $REPORT.csv.gz -s "image qc for $rdate: $all images, $bad problems" -- $1
