# acquia-decouple-kit-aio
Acquia decouple kit All-in-one, based on docker

# Install

## Acquiring keys
Get your private and public key from Marvel: https://developer.marvel.com
Get your API key from Apollo Engine: https://engine.apollographql.com

Set your keys in docker-compose.override.yml files and inside /react/.env.graphql:
docker-compose.override.yml
```
services:
  graphql:
    environment:
      API_PUBLIC_KEY: put_your_marvel_public_key
      API_PRIVATE_KEY: put_your_marvel_private_key
      APOLLO_ENGINE: put_your_apolo_engine_key
```
and /react/.env.graphql
```
API_PUBLIC_KEY= *** GO TO https://developer.marvel.com ***
API_PRIVATE_KEY= *** GO TO https://developer.marvel.com ***
APOLLO_ENGINE= *** GO TO https://engine.apollographql.com ***
```

## Spinning up

run install.sh

User url in the end to access your environment