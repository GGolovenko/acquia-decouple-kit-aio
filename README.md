# acquia-decouple-kit-aio
Acquia decouple kit All-in-one, based on docker

# Install

## Acquiring keys
Get your private and public key from Marvel: https://developer.marvel.com
Get your API key from Apollo Engine: https://engine.apollographql.com

Set your keys in docker-compose.override.yml files and inside /react/.env.graphql

## Spinning up

docker-compose up -d
docker-compose exec php ./spin-up.sh

User url in the end to access your environment
