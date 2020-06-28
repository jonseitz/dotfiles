#!/bin/bash

if [[ ! -f $HOME/.config/gh/hosts.yml ]]; then
  echo '{"text":"Err","class":"gh-error","tooltip":"gh cli not logged in"}'
  exit 0
fi

issues=`gh api issues?filter=assigned\&state=open`

issue_count=`echo $issues | jq -j 'map(select((.assignees | map(select(.login == "jonseitz"))) and (has("pull_request")|not))) | length'`

echo '{"text":'$issue_count',"tooltip":"Issues"}'
