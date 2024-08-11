FROM ubuntu:20.04
RUN apt-get update && apt-get install -y gcc python3
COPY Src/hello.c Src/hello.c
COPY Src/hello.py Src/hello.py 
RUN gcc Src/hello.c -o /hello
CMD bash -c "/hello && python3 /Src/hello.py"
