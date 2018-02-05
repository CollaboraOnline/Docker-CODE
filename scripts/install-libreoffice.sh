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
mkdir -p /usr/share/mythes
mkdir -p /opt/lool/systemplate/usr/share/hyphen
for i in `find /opt/collaboraoffice5.3/share/extensions/ -name hyph*.dic`;do cp $i /opt/lool/systemplate/usr/share/hyphen;done
for i in `find /opt/collaboraoffice5.3/share/extensions/ -name hyph*.dic`;do cp $i /usr/share/hyphen;done
cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_US.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_GB.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-it/it_IT.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-ru/ru_RU.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-pt-BR/pt_BR.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-pt-PT/pt_PT.* /usr/share/hunspell
cp /opt/collaboraoffice5.3/share/extensions/dict-fr/fr.dic /usr/share/hunspell/fr_FR.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-fr/fr.aff /usr/share/hunspell/fr_FR.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-es/es_ANY.dic /usr/share/hunspell/es_ES.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-es/es_ANY.aff /usr/share/hunspell/es_ES.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_DE_frami.dic /usr/share/hunspell/de_DE.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_DE_frami.aff /usr/share/hunspell/de_DE.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-pt-PT/th_pt_PT_v2.dat /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-es/th_es_ANY_v2.dat /usr/share/mythes/th_es_ES_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-fr/thes_fr.dat /usr/share/mythes/th_fr_FR_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-ru/th_ru_RU_v2.dat /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-it/th_it_IT_v2.dat /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-en/th_en_US_v2.dat /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-de/th_de_DE_v2.dat /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-pt-PT/th_pt_PT_v2.idx /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-es/th_es_ANY_v2.idx /usr/share/mythes/th_es_ES_v2.idx
cp /opt/collaboraoffice5.3/share/extensions/dict-fr/thes_fr.idx /usr/share/mythes/th_fr_FR_v2.idx
cp /opt/collaboraoffice5.3/share/extensions/dict-ru/th_ru_RU_v2.idx /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-it/th_it_IT_v2.idx /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-en/th_en_US_v2.idx /usr/share/mythes
cp /opt/collaboraoffice5.3/share/extensions/dict-de/th_de_DE_v2.idx /usr/share/mythes
apt-get -y remove --purge collaboraoffice5.3-dict*

# Cleanup
rm -rf /var/lib/apt/lists/*
