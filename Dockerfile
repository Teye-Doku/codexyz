FROM node:19.7-alpine3.16

RUN apk update && apk add --no-cache dumb-init

ENV NODE_ENV production

WORKDIR /usr/src/app

COPY package*.json ./

RUN --mount=type=cache,target=/usr/src/app/.npm \
  npm set cache /usr/src/app/.npm && \
  npm ci --only=production

COPY ./src/ .

USER node

COPY --chown=node:node ./src/ .

EXPOSE 8000

CMD ["dumb-init", "node", "server.js"]