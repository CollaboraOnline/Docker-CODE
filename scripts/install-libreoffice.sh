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
apt-get -y install loolwsd code-brand collaboraoffice6.2-dict* collaboraofficebasis6.2-ar_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-as_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ast_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-bg_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-bn-in_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-br_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ca_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-calc_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ca-valencia_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-core_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-cs_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-cy_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-da_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-de_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-draw_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-el_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-en-gb_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-en-us_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-es_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-et_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-eu_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-extension-pdf-import_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-fi_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-fr_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ga_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-gd_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-gl_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-graphicfilter_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-gu_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-he_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-hi_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-hr_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-hu_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-id_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-images_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-impress_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-is_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-it_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ja_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-km_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-kn_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ko_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-lt_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-lv_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ml_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-mr_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-nb_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-nl_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-nn_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-oc_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ooofonts_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ooolinguistic_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-or_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-pa-in_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-pl_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-pt_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-pt-br_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ro_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ru_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-sk_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-sl_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-sr_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-sr-latn_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-sv_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-ta_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-te_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-tr_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-uk_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-vi_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-writer_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-zh-cn_6.2.10.4-4_amd64.deb collaboraofficebasis6.2-zh-tw_6.2.10.4-4_amd64.deb

# Install inotifywait and killall to automatic restart loolwsd, if loolwsd.xml changes
apt-get -y install inotify-tools psmisc

# Cleanup
rm -rf /var/lib/apt/lists/*

# Fix permissions
chown -R lool:lool /opt/
chown -R lool:lool /etc/loolwsd

