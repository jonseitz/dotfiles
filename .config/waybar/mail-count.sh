#!/bin/bash
unread_count=`notmuch count tag:inbox AND tag:unread`
inbox_count=`notmuch count tag:inbox`
echo '{"text": "'$unread_count'/'$inbox_count'","tooltip":"Inbox"}'
