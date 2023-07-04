FROM ubuntu
RUN echo "HOME origin is ${HOME}" >> /result.txt
ENV HOME=HelloWorld
#ENV MY_HOME=HelloWorld
RUN echo "HOME current is ${HOME}" >> /result.txt
ENTRYPOINT cat /result.txt
