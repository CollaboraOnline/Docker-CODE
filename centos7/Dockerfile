FROM centos:7

# Environment variables
ENV domain localhost
ENV LC_CTYPE en_US.UTF-8

# Add Collabora repos
RUN yum -y install wget
RUN wget https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-centos7/repodata/repomd.xml.key
RUN rpm --import repomd.xml.key
RUN yum-config-manager --add-repo https://www.collaboraoffice.com/repos-staging/CollaboraOnline/CODE-centos7

# Install the Collabora packages
RUN yum -y install loolwsd CODE-brand

ADD /scripts/start-libreoffice.sh /

EXPOSE 9980

# Entry point
CMD bash start-libreoffice.sh
