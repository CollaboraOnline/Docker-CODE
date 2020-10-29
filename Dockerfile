FROM ubuntu:18.04

# Environment variables
ENV domain localhost
ENV LC_CTYPE C.UTF-8

# Setup scripts for Collabora Online
ADD /scripts/install-collabora-online.sh /
ADD /scripts/start-collabora-online.sh /
RUN bash install-collabora-online.sh

EXPOSE 9980

# switch to lool user
USER 101

# Entry point
CMD bash start-collabora-online.sh
