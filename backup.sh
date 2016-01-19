#!/bin/sh

TODAY=`date '+%F'`

echo $TODAY.dbbackup
scp -r sample:backup/database/$TODAY.dbbackup backup
Dropbox-Uploader/dropbox_uploader.sh upload backup/$TODAY.dbbackup sample.dbbackup

MONTHAGO=`date -d '31 days ago' '+%F'`
rm -f backup/$MONTHAGO.dbbackup

fileinfo=`ls -lh backup/$TODAY.dbbackup | awk '{print $5}'`
curl_content='payload={"channel": "#backup", "username": "sample", "icon_emoji": ":smile:", "text": "'
curl_content="${curl_content} ${TODAY}.dbbackup ${fileinfo} backup done"
curl_content="${curl_content}\"}"
curl="curl -X POST --data-urlencode `echo -e "'${curl_content}'"` https://hooks.slack.com/services/xxxxxxxxxxxx"
eval $curl
