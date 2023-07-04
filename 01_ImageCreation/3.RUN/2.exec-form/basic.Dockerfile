FROM ubuntu
RUN ["echo", "Hello World"]
RUN ["echo", "My Home Direcotry Is ${HOME}", ">", "/result.txt"]