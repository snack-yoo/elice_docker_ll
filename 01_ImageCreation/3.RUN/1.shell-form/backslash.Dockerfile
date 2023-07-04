FROM ubuntu
RUN echo "My Home Directory is  \
    ${HOME}"  \
    > /result.txt
