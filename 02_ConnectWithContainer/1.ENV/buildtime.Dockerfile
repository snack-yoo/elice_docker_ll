FROM ubuntu
ARG ALPHA
ENV ALPHA=${ALPHA}
ENTRYPOINT echo "ALPHA is ${ALPHA}"

# docker build -t test.env.buildtime -f buildtime.basic.Dockerfile --build-arg ALPHA=alpha .