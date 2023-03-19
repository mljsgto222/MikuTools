FROM node:16

WORKDIR /app

COPY . .

RUN npm install -g pnpm
RUN pnpm install

ENV NUXT_HOST=0.0.0.0
EXPOSE 3000

CMD [ "pnpm", "run", "start" ]
