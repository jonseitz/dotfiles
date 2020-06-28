#!/bin/bash

if [[ ! -f $HOME/.config/gh/hosts.yml ]]; then
  echo '{"text":"Err","class":"gh-error","tooltip":"gh cli not logged in"}'
  exit 0
fi

reviews=`gh api issues?filter=assigned\&state=open`

review_count=`echo $reviews | jq -j 'map(select((.assignees | map(select(.login == "jonseitz"))) and has("pull_request"))) | length'`

echo '{"text":'$review_count',"tooltip":"Reviews"}'
