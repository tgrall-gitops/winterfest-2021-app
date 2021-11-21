FROM node:17-buster-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm ci

# Bundle app source
COPY . .

EXPOSE 8080


CMD [ "node", "./bin/www" ]

LABEL org.opencontainers.image.authors="Winterfest 2021 Development team" \
    org.opencontainers.image.url="${repo_url}" \
    org.opencontainers.image.documentation="${repo_url}/README.md" \
    org.opencontainers.image.source="${repo_url}"