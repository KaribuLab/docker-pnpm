FROM node:24.10.0-alpine

RUN apk add --no-cache wget bash
RUN wget -qO- https://get.pnpm.io/install.sh | PNPM_VERSION=10.27.0 ENV="$HOME/.bashrc" SHELL="$(which bash)" bash -
