FROM node:22

ENV SHELL=bash
RUN apt-get update && apt-get install -y curl bash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN curl -fL https://github.com/pnpm/pnpm/releases/download/v10.7.1/pnpm-linuxstatic-x64 -o /usr/bin/pnpm
RUN chmod +x /usr/bin/pnpm
RUN pnpm setup
