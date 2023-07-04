FROM ubuntu
ENV ALPHA="alpha"
ENV BRAVO=bravo
ENV CHALLIE="Hello\
challie"
ENV DELTA=delta ECHO="echo"
ENTRYPOINT echo "ALPHA is ${ALPHA}, \
BRAVO is ${BRAVO}, \
CHALLIE is ${CHALLIE}, \
DELTA is ${DELTA}, \
ECHO is ${ECHO}"