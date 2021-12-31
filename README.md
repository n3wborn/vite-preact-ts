# Vitejs (Preact + Typescript) Docker boilerplate

## Setup

Install [Docker](https://docs.docker.com/get-docker/) if needed, then :

```sh
# clone this repo
git clone git@github.com:n3wborn/vite-preact-ts.git

# get into it
cd vite-preact-ts

## build Docker image based on the Dockerfile
make docker_build

# install dependencies
make install

# start vite "dev" mode
make dev
```

Open `http://localhost:3000/` on your browser and you're good to go !

