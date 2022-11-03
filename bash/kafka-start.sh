#! /bin/bash

osascript <<END 
tell application "Terminal"
    do script "cd /Users/dduru/Documents/Documents_Dumebi.Duru/Setups/kafka;zookeeper-server-start.sh config/zookeeper.properties"
end tell
END


osascript <<END 
tell application "Terminal"
    do script "cd /Users/dduru/Documents/Documents_Dumebi.Duru/Setups/kafka;kafka-server-start.sh config/server.properties"
end tell
END

