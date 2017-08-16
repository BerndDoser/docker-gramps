# docker-gramps

Create docker image of [Gramps](https://gramps-project.org/)

# Usage

* Allow docker to use the local display

  xhost local:

* Run docker container

  docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v $(pwd):/data bernddoser/docker-gramps
