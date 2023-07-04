FROM ubuntu
#CMD ["echo", "My Home Direcotry Is ${HOME}", ">", "/result.txt"]
CMD ["sh", "-c", "echo My Home Direcotry Is ${HOME} > /result.txt"]