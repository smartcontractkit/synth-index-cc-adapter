FROM node:alpine

WORKDIR /synth-index-cc-adapter
ADD . .

RUN yarn install

CMD node ./app.js
