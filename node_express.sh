read -a input
fileName=$( echo $RANDOM | md5sum | head -c 20; echo;)
NODE_PATH=/usr/lib/node_modules node index.js > $fileName &
serverId=$!
sleep 5
port=$( cat $fileName )
curl -s $( eval "echo ${input[@]}")
kill $serverId
rm $fileName