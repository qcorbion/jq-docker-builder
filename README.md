# jq-docker-builder
This repo provides a simple way to get the `jq` v1.6 statically-compiled binary for linux.

It was initially used to build the arm64 version as none were available.

Please refer to JQ's website if you need more info: https://stedolan.github.io/jq/

## How to build the binary?
Simply do: `docker buildx build . -t jq-docker-builder --platform linux/arm64 --load` (for instance)

## Where is it?
You can find the binary under the `/finalBins/` folder of the container.

Several ways:
- Use `docker cp`
- Base your own Dockerfile on a Docker image built from the Dockerfile of this repo
- And so on

## Do I need anything to run this binary?
No as it's statically-compiled!
