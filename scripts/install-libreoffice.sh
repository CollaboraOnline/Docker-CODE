#!/bin/sh

# Refresh repos otherwise installations later may fail
apt-get update

# Install HTTPS transport
apt-get -y install apt-transport-https

# Install locales
apt-get -y install locales-all

# Install some more fonts
apt-get -y install fonts-open-sans

# Install gnupg2
apt-get -y install gnupg2

# install ca-certificates
apt-get -y install ca-certificates

# Add Collabora repos
echo "deb https://collaboraoffice.com/repos/CollaboraOnline/CODE-ubuntu1804 /" > /etc/apt/sources.list.d/collabora.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 6CCEA47B2281732DF5D504D00C54D189F4BA284D
apt-get update

# Install the Collabora packages
apt-get -y install loolwsd code-brand collaboraoffice6.2-dict* collaboraofficebasis6.2-ar collaboraofficebasis6.2-as collaboraofficebasis6.2-ast collaboraofficebasis6.2-bg collaboraofficebasis6.2-bn-in collaboraofficebasis6.2-br collaboraofficebasis6.2-ca collaboraofficebasis6.2-calc collaboraofficebasis6.2-ca-valencia collaboraofficebasis6.2-core collaboraofficebasis6.2-cs collaboraofficebasis6.2-cy collaboraofficebasis6.2-da collaboraofficebasis6.2-de collaboraofficebasis6.2-draw collaboraofficebasis6.2-el collaboraofficebasis6.2-en-gb collaboraofficebasis6.2-en-us collaboraofficebasis6.2-es collaboraofficebasis6.2-et collaboraofficebasis6.2-eu collaboraofficebasis6.2-extension-pdf-import collaboraofficebasis6.2-fi collaboraofficebasis6.2-fr collaboraofficebasis6.2-ga collaboraofficebasis6.2-gd collaboraofficebasis6.2-gl collaboraofficebasis6.2-graphicfilter collaboraofficebasis6.2-gu collaboraofficebasis6.2-he collaboraofficebasis6.2-hi collaboraofficebasis6.2-hr collaboraofficebasis6.2-hu collaboraofficebasis6.2-id collaboraofficebasis6.2-images collaboraofficebasis6.2-impress collaboraofficebasis6.2-is collaboraofficebasis6.2-it collaboraofficebasis6.2-ja collaboraofficebasis6.2-km collaboraofficebasis6.2-kn collaboraofficebasis6.2-ko collaboraofficebasis6.2-lt collaboraofficebasis6.2-lv collaboraofficebasis6.2-ml collaboraofficebasis6.2-mr collaboraofficebasis6.2-nb collaboraofficebasis6.2-nl collaboraofficebasis6.2-nn collaboraofficebasis6.2-oc collaboraofficebasis6.2-ooofonts collaboraofficebasis6.2-ooolinguistic collaboraofficebasis6.2-or collaboraofficebasis6.2-pa-in collaboraofficebasis6.2-pl collaboraofficebasis6.2-pt collaboraofficebasis6.2-pt-br collaboraofficebasis6.2-ro collaboraofficebasis6.2-ru collaboraofficebasis6.2-sk collaboraofficebasis6.2-sl collaboraofficebasis6.2-sr collaboraofficebasis6.2-sr-latn collaboraofficebasis6.2-sv collaboraofficebasis6.2-ta collaboraofficebasis6.2-te collaboraofficebasis6.2-tr collaboraofficebasis6.2-uk collaboraofficebasis6.2-vi collaboraofficebasis6.2-writer collaboraofficebasis6.2-zh-cn collaboraofficebasis6.2-zh-tw

# Install inotifywait and killall to automatic restart loolwsd, if loolwsd.xml changes
apt-get -y install inotify-tools psmisc

# Cleanup
rm -rf /var/lib/apt/lists/*

# Fix permissions
chown -R lool:lool /opt/
chown -R lool:lool /etc/loolwsd
