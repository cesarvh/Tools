#!/bin/bash
#
export HOSTNAME="nightly.collectionspace.org"
export CSPACEURL="http://$HOSTNAME"
export URL="$CSPACEURL"

export CONTENT_TYPE="Content-Type: application/xml"
export LOGIN="admin@core.collectionspace.org"
export PASSWORD="Administrator"
export CSPACEUSER="$LOGIN:$PASSWORD"

echo
echo ">>>>> Environment variables set:"
echo CSPACEURL  $CSPACEURL
echo CSPACEUSER $CSPACEUSER
echo

#http://localhost:8180/collectionspace/ui/bampfa/html/index.html
