FROM node:22.14.0-alpine3.21

# Install pnpm
RUN apk add --no-cache curl
RUN mkdir -p /usr/local/bin
RUN curl -fL https://github.com/pnpm/pnpm/releases/download/v10.7.1/pnpm-linuxstatic-x64 -o /usr/local/bin/pnpm
RUN chmod +x /usr/local/bin/pnpm

USER node