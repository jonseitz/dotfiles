#!/bin/bash

if [[ ! -f $HOME/.config/gh/hosts.yml ]]; then
  echo '{"text":"Err","class":"gh-error","tooltip":"gh cli not logged in"}'
  exit 0
fi

notifications=`gh api notifications`

notification_count=`echo $notifications | jq -j '. | length'`

echo '{"text":'$notification_count',"tooltip":"Notifications"}'
