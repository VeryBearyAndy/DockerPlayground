# A Simple C Program

## Step by Step With Explanation

**NOTE:** It is important to test the code that will running in exact environment it will be ran in 

+ Create a simple hello world application, in really any language will work, but for this demo, I will use both C and Python

### The C application
+ 1) create a **Src** directory and then a C file named **Hello.C**
+ 2) add the content of the C file to compile, below is a simple example
    ```c
    #include <stdio.h>

    int main(){
        printf("hello world\n");
        return 0;
    }
    ```
+ 3) create the Dockerfile, please note that depending on the structure of your project, the pathing will be different below is the full file, I will explain the utility of each line.
    ```Dockerfile
    FROM ubuntu:20.04
    RUN apt-get update && apt-get install -y gcc
    COPY Src/hello.c Src/hello.c
    RUN gcc Src/hello.c -o /hello
    CMD ["/hello"]
    ```
    + The from statement
        **FROM ubuntu:20.04**
        + this statement species what your base image is, in this case it is ubuntu 20.04
    + the first run statement
        **RUN apt-get update && apt-get install -y gcc**
        + This is installing dependancies on the image, so updating the system and installing the compilation tools for the C File
    + the copy statement
        **COPY Src/hello.c Src/hello.c**
        + This copies the local source into the image to be ran
    + the second run statement
        **RUN gcc Src/hello.c -o /hello**
        + This runs the compilation command and generates the executable
    + The CMD statement
        **CMD ["/hello"]**
        + runs the executable and dumps the output into the local (not the image, but the actual machine) command line