node index.js > /dev/null &
serverId=$!
sleep 5
curl "$@"
kill $serverId