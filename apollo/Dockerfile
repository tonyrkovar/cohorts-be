FROM node:13
WORKDIR /app

RUN yarn global add @prisma/cli

COPY ./prisma/ ./prisma
COPY package.json ./
COPY yarn.lock ./
COPY tsconfig.json ./

RUN yarn

COPY src/ ./src

EXPOSE 4000

CMD ["yarn", "dev"]
