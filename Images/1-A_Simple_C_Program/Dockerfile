FROM ubuntu:20.04
RUN apt-get update && apt-get install -y gcc
COPY Src/hello.c Src/hello.c
RUN gcc Src/hello.c -o /hello
CMD ["/hello"]