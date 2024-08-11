# Creating a Relational Database Container
## Understanding what this means
One of the biggest strenght of docker is that it can completely decouple something like a database from your native system. Every programmer has heard the joke of "it works on my system, well we can't ship your system" then they flash a picture of docker; this is the opposite philosophy. by emulating the complete segregation of a database, just as you would expect in a production envirionment. you are free to play with the system however you want.
+ Very strong pros
    + Swapping dependancies before they are concrete is now easier
    + you can easily relaunch a container if necessary and kill it when not in use
    + you can isolate and minimize interactions of you native system and the data base engine
    + you can more closely mirror the relationship you applications will have with the database without using sqlite
    + you can spin up images that match spicific use cases to mirror real world environments
## Getting started
We will be constructing a postgress database, Step by step we will go into more detail and show a realistic development process. we will
+ 1) set up the bare database and have it run
+ 2) feed it sql scripts build the tables
+ 3) write a python script that interacts with the database and inserts data from a CSV into the database

through these 3 phases I will demonstrate the value of containers and container images in the DevOps tool chain to spin up envrionments that aid development with very minimal effort. 