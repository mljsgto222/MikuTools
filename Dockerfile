FROM node:16.19.1-alpine3.17

WORKDIR /app

COPY . .

RUN npm install -g pnpm
RUN pnpm install
RUN pnpm run generate

ENV NUXT_HOST=0.0.0.0
EXPOSE 3000

CMD [ "pnpm", "run", "start" ]
