#!/bin/bash

read -p 'Game: ' game
game_slug=$(echo $game | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed "s/'//")
filename="./_drafts/$game_slug.md"
cp _review_template.md $filename
sed -i "s/GAME/$game/" $filename
sed -i "s/game/$game_slug/g" $filename
echo "Created $filename"
