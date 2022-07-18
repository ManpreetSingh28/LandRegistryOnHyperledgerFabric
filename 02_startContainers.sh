docker-compose -f docker-compose-orderer.yaml up -d

docker-compose -f docker-compose-peerOrg1.yaml up -d

docker-compose -f docker-compose-peerOrg2.yaml up -d

docker-compose -f docker-compose-ca.yaml up -d

docker-compose -f docker-compose-cli.yaml up -d

echo "sleeping for 5 secs..."

sleep 5

docker ps -a