FROM node:22.14.0-alpine3.21

# Install pnpm
RUN apk add --no-cache curl
RUN mkdir -p /usr/local/bin
RUN curl -fL https://github.com/pnpm/pnpm/releases/download/v10.7.1/pnpm-linuxstatic-x64 -o /usr/local/bin/pnpm
RUN chmod +x /usr/local/bin/pnpm

# Configure pnpm global directories
ENV PNPM_HOME="/root/.local/share/pnpm"
ENV PATH="${PNPM_HOME}:${PATH}"

# Create necessary directories with correct permissions
RUN mkdir -p /root/.local/share/pnpm/global
RUN mkdir -p /root/.config/pnpm

# Set pnpm configuration
RUN echo '{"global-bin-dir":"/root/.local/share/pnpm/global"}' > /root/.config/pnpm/rc.json

# Verify pnpm setup
RUN pnpm --version