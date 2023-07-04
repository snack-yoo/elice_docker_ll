FROM ubuntu
RUN ['echo', 'Hello World']
#RUN ["echo", "Hello World"]
RUN ["echo", "Path Seperator in Windows is \"]
#RUN ["sh", "-c", "echo Path Seperator in Windows is \\\\ > /result.txt"]