FROM ubuntu:20.04
LABEL maintainer="Benedict Schwind <benedict.schwind@stud.th-rosenheim.de>"
LABEL description="Image for building CMake & GNU ARM eabi applications"
LABEL title=mingw-w64
LABEL version=1.0

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get -y install \
    #build-essential \
    mingw-w64 && \
    apt-get clean