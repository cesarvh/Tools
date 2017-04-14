#!/bin/bash
#
export HOSTNAME="localhost:8180"
export CSPACEURL="https://$HOSTNAME"
export URL="$CSPACEURL"

export CONTENT_TYPE="Content-Type: application/xml"
export LOGIN="admin@bampfa.cspace.berkeley.edu"
export PASSWORD="password"
export CSPACEUSER="$LOGIN:$PASSWORD"

echo
echo ">>>>> Environment variables set:"
echo CSPACEURL  $CSPACEURL
echo CSPACEUSER $CSPACEUSER
echo

http://localhost:8180/collectionspace/ui/bampfa/html/index.html