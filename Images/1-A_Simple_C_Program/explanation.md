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
        `FROM ubuntu:20.04`
        + this statement species what your base image is, in this case it is ubuntu 20.04
    + the first run statement
        `RUN apt-get update && apt-get install -y gcc`
        + This is installing dependancies on the image, so updating the system and installing the compilation tools for the C File
    + the copy statement
        `COPY Src/hello.c Src/hello.c`
        + This copies the local source into the image to be ran
    + the second run statement
        `RUN gcc Src/hello.c -o /hello`
        + This runs the compilation command and generates the executable
    + The CMD statement
        `CMD ["/hello"]`
        + runs the executable and dumps the output into the local (not the image, but the actual machine) command line
+ 4) run the CLI command to build the image
    ```CMD
    docker Builder build -t <container-image-name> .
    ```
    + Explination
        + `docker builder build`
            + this is the actual build command
        + `-t <container-image-name>`
            + this tags the container image with whatever you want, replace the `<container-image-name>` tag with whatever you want to call it
        + `.`
            + this argument is the source, this should be a `.` if you are in the directory that contains the docker file, or it should point to the directory containing the docker file
+ 5) run the CLI command to run the docker image
    ```CMD
    docker run --rm <container-image>
    ```
    + Explination
        + `docker run`
            + this is the run command that runs the docker image
        + `--rm`
            + this is the 'remove' tag, it just tells docker to kill the image once it stops executing. if it is note here, the image will stay alive indefinately.
        + `<container-image>`
            + this is the container image that you will be spinning up into a container

### Adding the Python Applicaiton
+ AWESOME!, now that we have added a compilation for the C program, lets add a python application to the comilation list and make them both print to the console to see some neat features of Docker
+ 1) add the python file `hello.py` to the `Src` Directory and write a very simple application, in this case, lets do a "blast off" application below is the code for that
    ```python
    for x in reversed(range(10)):
        print(x)
    print("blast off!")
    ```
+ 2) now we have to modify the Dockerfile to include an install for python3 and have it run the CLI command to run the file, below is the update DockerFile
```Dockerfile
    FROM ubuntu:20.04
    RUN apt-get update && apt-get install -y gcc python3
    COPY Src/hello.c Src/hello.c
    COPY Src/hello.py Src/hello.py 
    RUN gcc Src/hello.c -o /hello
    CMD bash -c "/hello && python3 /Src/hello.py"
```
+ 3) run the command to bulild a new image overtop of the old image
    ```docker builder build -t hello_v2```
+ 4) run the command to spin up the new container
    ```docker run --rm hello_v2```

### clean up and notes
+ run the commands in the following sequence
    + ```docker image prune```
    + ```docker image remove image_1```
    + ```docker image remove image_2```
+ this will remove any failed image builds and remove the two images you created. 
+ you will notice docker caches things between container image builds, this is extremely useful because it means in particularly hefty builds, build times are trimmed down quite a bit.
+ best practices dicatate that you baton pass builds to containers with minimal run specs and equipment, so you may... you a container to build a project, then copy and execute a build in a seperate container with minimal dependancies, a bare operating system, and no build tools available.
