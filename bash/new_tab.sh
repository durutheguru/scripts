#!/bin/bash

read -p "Enter Command: " command

dir=$(pwd)

osascript <<END 
tell application "Terminal"
    do script "cd $dir && $command"
end tell
END
