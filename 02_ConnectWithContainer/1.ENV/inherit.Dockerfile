FROM ubuntu AS parent
ENV ALPHA=alpha

FROM parent
ENTRYPOINT echo "ALPHA is ${ALPHA}"