docker stop $(docker ps -aq)

docker system prune --volumes

cd channel-artifacts && rm -rf *

cd ../crypto-config && sudo rm -rf *

docker rmi -f $(docker images | grep dev | awk '{print $3}')

cd ../app && rm -rf fabric-client-kv-org[1-4]

cd ..

sleep 2

echo "================================== Network has been Destroyed Successfully! ======================================="