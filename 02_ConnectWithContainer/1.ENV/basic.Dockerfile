FROM ubuntu
ENV ALPHA="alpha"
ENV BRAVO=bravo
ENV CHARLIE="Hello\
charlie"
ENV DELTA=delta ECHO="echo"
ENTRYPOINT echo "ALPHA is ${ALPHA}, \
BRAVO is ${BRAVO}, \
CHARLIE is ${CHARLIE}, \
DELTA is ${DELTA}, \
ECHO is ${ECHO}"