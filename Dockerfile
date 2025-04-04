FROM node:22.14.0-alpine3.21

# Install pnpm
RUN npm install -g pnpm

USER node