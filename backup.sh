#!/bin/sh

TODAY=`date '+%F'`

echo $TODAY.dbbackup
scp -r sample:backup/database/$TODAY.dbbackup backup
Dropbox-Uploader/dropbox_uploader.sh upload backup/$TODAY.dbbackup sample.dbbackup

MONTHAGO=`date -d '31 days ago' '+%F'`
rm -f backup/$MONTHAGO.dbbackup

user_name="user"
fileinfo=`ls -lh backup/$TODAY.dbbackup | awk '{print $5}'`
if [ -n "$fileinfo" ] ; then
  icon=":wrench:"
  text="${TODAY}.dbbackup ${fileinfo} backup done"
else
  icon=":rage:"
  text="${TODAY}.dbbackup backup FAIL!!!"
fi

curl_content='payload={"channel": "#backup", "username": "'${user_name}'",'
curl_content=${curl_content}' "icon_emoji": "'${icon}'", "text": "'
curl_content="${curl_content} ${text}"
curl_content="${curl_content}\"}"
curl="curl -X POST --data-urlencode `echo -e "'${curl_content}'"` https://hooks.slack.com/services/XXXXXXXXXXXXXXXXXXX"
eval $curl

