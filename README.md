![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/intgbles/openscad-with-libraries?style=for-the-badge)

# Openscad with libraries for CI
  

## What is it?

Docker image with [Openscad](http://www.openscad.org/) and [Dotscad](https://github.com/JustinSDK/dotSCAD) ready to use in a continous integration scenario. Other libraries may be added in the future.  

If there is any library you would like to see installed, please [open an issue](https://gitlab.com/intgbles/openscad-with-libraries) using the following template:  

> **Name**: [Dotscad](https://github.com/JustinSDK/dotSCAD)
>  
> **Description**: Extensive library that reduces the burden of mathematics in Openscad. Just a few examples of readily available modules: [arc](https://openhome.cc/eGossip/OpenSCAD/lib2x-arc.html), [pie](https://openhome.cc/eGossip/OpenSCAD/lib2x-pie.html), [rounded_cube](https://openhome.cc/eGossip/OpenSCAD/lib2x-rounded_cube.html), [sweep](https://openhome.cc/eGossip/OpenSCAD/lib2x-sweep.html), [loft](https://openhome.cc/eGossip/OpenSCAD/lib2x-loft.html), [bend](https://openhome.cc/eGossip/OpenSCAD/lib2x-bend.html).  

Fill out the name with link to the project's git repository or website and brief description of what that library does.  


## Building and publishing

Building is handled by [Docker Hub](https://hub.docker.com/) automatically via Github when a new commit is pushed to the master or dev branches in Gitlab.


## How to run a job locally?  

If all you want is to run a job and the stable version already caters for your needs, for instance, if you want to convert a native file that uses the `arc.scad` library from dotscad into a .stl file, typing `docker run intgbles/openscad-with-libraries:stable openscad -o output.stl input.scad` should do the trick.  


## How to test a new configuration?
Changes done to the Dockerfile can be safely tested by cloning the repository and doing all changes on the dev branch by checking out to it. When done changing the Dockerfile type `docker build -t intgbles/openscad-with-libraries:dev .` followed by `docker run intgbles/openscad-with-libraries:dev openscad -o test.stl test.scad`, for instance. Managing local images can be done by typing `docker images` and `docker rmi -f <IMAGE ID>`. When you are done, commit changes to the dev branch.