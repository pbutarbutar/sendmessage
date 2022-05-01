FROM node:12-alpine

RUN apk add --no-cache  chromium --repository=http://dl-cdn.alpinelinux.org/alpine/v3.10/main

WORKDIR /app
COPY package.json /app

RUN npm install

COPY . /app
CMD ["node", "app.js"]

EXPOSE 8000