#!/bin/bash 


files=()

while IFS= read -r line; do
  status=$(echo "$line" | awk '{print $1}')
  file=$(echo "$line" | awk '{print $2}')
  
  if [[ $status =~ ^(M|A|D|\?\?)$ ]]; then
    files+=("$status: $file")
  fi
done < <(git status --porcelain)

# Commit the changes
if [[ ${#files[@]} -gt 0 ]]; then
  commit_message=$(printf "%s\n" "${files[@]}")
  git commit -am "$commit_message"
else
  echo "No changes to commit."
fi

