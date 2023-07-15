FROM node:18.16.1
WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn install
COPY . /app/
EXPOSE 3000
ENTRYPOINT ["yarn", "start"]