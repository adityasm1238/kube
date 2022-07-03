NODE_PATH=/usr/lib/node_modules node index.js > /dev/null &
serverId=$!
echo $serverId
kill $serverId