FROM node:22.14.0-alpine3.21

ENV SHELL=bash

RUN apk add --no-cache curl bash
RUN mkdir -p /usr/bin
RUN curl -fL https://github.com/pnpm/pnpm/releases/download/v10.7.1/pnpm-linuxstatic-x64 -o /usr/bin/pnpm
RUN chmod +x /usr/bin/pnpm
RUN pnpm setup
