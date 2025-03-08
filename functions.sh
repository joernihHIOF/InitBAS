#!/bin/bash
function sgpt {
echo "$1" | chatgpt
}

function gitp() {
	git add --all
	git commit -m "$1"
	git push
}
 tm() {
    git checkout $(git log --pretty=format:"%h%x09%an%x09%ad%x09%s" | fzf | cut -c 1-8)
}

function fins(){
  find . -name "$1"
}

function wins(){ 
  grep -r "$1" .
}

