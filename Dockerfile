# syntax=docker/dockerfile:1
FROM node:lts-alpine3.16
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm","start" ]
