#!/bin/sh

# Update installed packages
apt-get update && apt-get -y upgrade

# Install HTTPS transport
apt-get -y install apt-transport-https

# Install locales
apt-get -y install locales-all

# Add Collabora repos
echo "deb https://collaboraoffice.com/repos/CollaboraOnline/CODE /" >> /etc/apt/sources.list.d/collabora.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6CCEA47B2281732DF5D504D00C54D189F4BA284D
apt-get update

# Install the Collabora packages
apt-get -y install loolwsd code-brand collaboraoffice5.3-dict* collaboraofficebasis5.3*

# Copy dictionaries to paths where LOK recognizes them
mkdir -p /usr/share/hunspell
mkdir -p /usr/share/hyphen
mkdir -p /opt/lool/systemplate/usr/share/hyphen
for i in `find /opt/collaboraoffice5.3/share/extensions/ -name hyph*.dic`;do cp $i /opt/lool/systemplate/usr/share/hyphen;done
for i in `find /opt/collaboraoffice5.3/share/extensions/ -name hyph*.dic`;do cp $i /usr/share/hyphen;done
cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_US.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_GB.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-it/it_IT.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-nl/nl_NL.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-pl/pl_PL.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-ru/ru_RU.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-pt-BR/pt_BR.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-pt-PT/pt_PT.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-fr/fr.dic /usr/share/hunspell/fr_FR.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-fr/fr.aff /usr/share/hunspell/fr_FR.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-es/es_ANY.dic /usr/share/hunspell/es_ES.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-es/es_ANY.aff /usr/share/hunspell/es_ES.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_AT_frami.dic /usr/share/hunspell/de_AT.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_AT_frami.aff /usr/share/hunspell/de_AT.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_CH_frami.dic /usr/share/hunspell/de_CH.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_CH_frami.aff /usr/share/hunspell/de_CH.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_DE_frami.dic /usr/share/hunspell/de_DE.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_DE_frami.aff /usr/share/hunspell/de_DE.aff
apt-get -y remove --purge collaboraoffice5.3-dict*

# Cleanup
rm -rf /var/lib/apt/lists/*
