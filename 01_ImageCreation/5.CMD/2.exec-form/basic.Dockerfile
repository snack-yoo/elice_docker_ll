FROM ubuntu
CMD ["echo", "Hello World"]
CMD ["echo", "My Home Direcotry Is ${HOME}", ">", "/result.txt"]