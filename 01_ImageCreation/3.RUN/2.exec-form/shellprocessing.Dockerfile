FROM ubuntu
#RUN ["echo", "My Home Direcotry Is ${HOME}", ">", "/result.txt"]
RUN ["sh", "-c", "echo My Home Direcotry Is ${HOME} > /result.txt"]