FROM ubuntu
ENV ALPHA=alpha
ENTRYPOINT echo "ALPHA is ${ALPHA}"

#➜  1.ENV git:(main) ✗ docker run -it test.env.runtime
#ALPHA is alpha
#➜  1.ENV git:(main) ✗ docker run -it -e ALPHA=bravo test.env.runtime
#ALPHA is bravo

#➜  1.ENV git:(main) ✗ docker run -it --env-file .env test.env.runtime
#ALPHA is challie
