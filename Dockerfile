FROM node:alpine

WORKDIR /synth-index-cc-adapter
ADD . .

RUN apk add --no-cache git
RUN apk add python
RUN apk add --update alpine-sdk
RUN npm install

CMD node ./app.js
