FROM ubuntu
ENV ALPHA=alpha
RUN echo "ALPHA_BRAVO is $ALPHA_BRAVO" >> /results.txt
RUN echo "ALPHA_BRAVO is ${ALPHA}_BRAVO" >> /results.txt
RUN echo "ALPHA is $ALPHA" >> /results.txt
RUN echo "ALPHA is ${ALPHA}" >> /results.txt
RUN echo "ALPHA is ${ALPHA:-bravo}" >> /results.txt
RUN echo "ALPHA is ${ALPHA:+charlie}" >> /results.txt
RUN echo "BRAVO is ${BRAVO:-delta}" >> /results.txt
RUN echo "BRAVO is ${BRAVO:+echo}" >> /results.txt
ENTRYPOINT cat /results.txt


#ALPHA_BRAVO is
#ALPHA_BRAVO is alpha_BRAVO
#ALPHA is alpha
#ALPHA is alpha
#ALPHA is alpha
#ALPHA is charlie
#BRAVO is delta
#BRAVO is