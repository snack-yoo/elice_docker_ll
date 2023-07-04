FROM ubuntu
ENV APP_DIR=/my-app
WORKDIR ${APP_DIR}
CMD pwd