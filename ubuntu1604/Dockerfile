FROM ubuntu:16.04

# Environment variables
ENV domain localhost
ENV LC_CTYPE en_US.UTF-8

# Add Collabora repos
RUN apt-get update
RUN apt-get -y install apt-transport-https
RUN echo "deb https://collaboraoffice.com/repos-staging/CollaboraOnline/CODE /" > /etc/apt/sources.list.d/collabora.list
RUN apt-key adv --no-tty --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6CCEA47B2281732DF5D504D00C54D189F4BA284D
RUN apt-get update

# Install the Collabora packages
RUN apt-get -y install loolwsd code-brand

ADD /scripts/start-libreoffice.sh /

EXPOSE 9980

# Entry point
CMD bash start-libreoffice.sh
