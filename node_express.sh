NODE_PATH=/usr/lib/node_modules node index.js > /dev/null &
serverId=$!
sleep 5
echo 1
kill $serverId