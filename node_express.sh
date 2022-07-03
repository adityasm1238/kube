read -a input
NODE_PATH=/usr/lib/node_modules node index.js > /dev/null &
serverId=$!
sleep 5
echo "${input[@]}"
kill $serverId