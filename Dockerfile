# The base image
FROM node:12

# The entry point
WORKDIR /app

# Install dependencies before source code, so they can be cached
COPY package*.json ./

RUN yarn install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "yarn", "start" ]
