FROM node:18.16.1
WORKDIR /app
COPY . /app/
RUN yarn install
EXPOSE 3000
ENTRYPOINT ["yarn", "start"]