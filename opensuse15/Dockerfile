FROM opensuse/leap:15

# Environment variables
ENV domain localhost
ENV LC_CTYPE en_US.UTF-8

# Add Collabora repos
RUN zypper --non-interactive install wget
RUN wget https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-centos7/repodata/repomd.xml.key
RUN rpm --import repomd.xml.key
RUN wget http://download.opensuse.org/repositories/devel:/libraries:/c_c++/openSUSE_Leap_15.0/repodata/repomd.xml.key
RUN rpm --import repomd.xml.key.1
RUN zypper --non-interactive ar 'https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-opensuse' 'CODE'
RUN zypper --non-interactive ar 'http://download.opensuse.org/repositories/devel:/libraries:/c_c++/openSUSE_Leap_15.0/devel:libraries:c_c++.repo'
RUN zypper --non-interactive ref

# Install the Collabora packages
RUN zypper --non-interactive install loolwsd CODE-brand

ADD /scripts/start-libreoffice.sh /

EXPOSE 9980

# Entry point
CMD bash start-libreoffice.sh
