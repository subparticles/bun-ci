ARG BUN_VERSION=1.3.14
FROM oven/bun:${BUN_VERSION} AS build-env

RUN apt-get update && apt-get install -y \
    curl \
    jq \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
