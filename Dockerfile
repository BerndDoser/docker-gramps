FROM ubuntu:16.04

MAINTAINER Bernd Doser <bernd.doser@braintwister.eu>

# Install dependencies
RUN apt-get update \
 && apt-get -y install \
    curl \
    xvfb \
    xdg-utils \
    python3-gi \
    python3-gi-cairo \
    python3-bsddb3 \
    librsvg2-2 \
    gir1.2-gtk-3.0 \
    make \
    python3-pillow \
    graphviz \
    python3-pip \
 && apt-get clean

ADD https://github.com/gramps-project/gramps/releases/download/v4.2.5/python3-gramps_4.2.5_all.deb .

RUN dpkg -i python3-gramps_4.2.5_all.deb
