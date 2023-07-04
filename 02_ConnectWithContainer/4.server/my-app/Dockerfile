#FROM node:18.16.1
#WORKDIR /app
#COPY . /app/
#RUN yarn install
#EXPOSE 3000
#ENTRYPOINT ["yarn", "start"]
#
#

#FROM node:18.16.1
#WORKDIR /app
#COPY package.json yarn.lock /app/
#RUN yarn install
#COPY . /app/
#EXPOSE 3000
#ENTRYPOINT ["yarn", "start"]

# docker image inspect test.myapp
# "Size": 1379218688,
# "Size": 1261024362,

FROM node:18.16.1 as my-app-builder
WORKDIR /app
COPY package.json yarn.lock /app/
RUN yarn install
COPY . /app/
RUN yarn build

FROM node:18.16.1 as my-app-starter
WORKDIR /app
COPY --from=my-app-builder /app/package.json /app/yarn.lock /app/
RUN yarn install --prod
COPY --from=my-app-builder /app/dist/ /app/dist/
EXPOSE 3000
ENTRYPOINT ["yarn", "start:prod"]
