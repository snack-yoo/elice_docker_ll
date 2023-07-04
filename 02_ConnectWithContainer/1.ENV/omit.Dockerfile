FROM ubuntu
ENV ALPHA alpha
ENV BRAVO =bravoWithEqual
ENTRYPOINT echo "ALPHA is ${ALPHA} \
BRAVO is ${BRAVO}"