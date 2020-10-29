FROM ubuntu:latest
LABEL maintainer="admin@intgbl.es"
LABEL version="1.0"

ENV TZ=Europe/Lisbon
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get -y install openscad git
RUN git clone https://github.com/JustinSDK/dotSCAD.git $HOME/.local/share/OpenSCAD/libraries/git/dotscad
RUN ln -s $HOME/.local/share/OpenSCAD/libraries/git/dotscad/src/* $HOME/.local/share/OpenSCAD/libraries

CMD ["openscad"]
