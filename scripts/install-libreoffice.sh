#!/bin/sh

# Update installed packages
apt-get update && apt-get -y upgrade

# Install HTTPS transport
apt-get -y install apt-transport-https

# Install locales
apt-get -y install locales-all

# Add Collabora repos
echo "deb https://collaboraoffice.com/repos/CollaboraOnline/CODE /" > /etc/apt/sources.list.d/collabora.list
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

cp /opt/collaboraoffice5.3/share/extensions/dict-ar/ar.aff /usr/share/hunspell/ar.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-ar/ar.dic /usr/share/hunspell/ar.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-ar/th_ar.dat /usr/share/mythes/th_ar.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-ar/th_ar.idx /usr/share/mythes/th_ar.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-bg/bg_BG.aff /usr/share/hunspell/bg_BG.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-bg/bg_BG.dic /usr/share/hunspell/bg_BG.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-bg/th_bg_BG_v2.dat /usr/share/mythes/th_bg_BG_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-bg/th_bg_BG_v2.idx /usr/share/mythes/th_bg_BG_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-br/br_FR.aff /usr/share/hunspell/br_FR.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-br/br_FR.dic /usr/share/hunspell/br_FR.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-ca/ca.aff /usr/share/hunspell/ca_ES.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-ca/ca.dic /usr/share/hunspell/ca_ES.dic
cp /opt/collaboraoffice5.3/share/extensions/dict-ca/th_ca_ES_v3.dat /usr/share/mythes/th_ca_ES_v3.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-ca/th_ca_ES_v3.idx /usr/share/mythes/th_ca_ES_v3.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-cs/cs_CZ.aff /usr/share/hunspell/cs_CZ.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-cs/cs_CZ.dic /usr/share/hunspell/cs_CZ.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-cs/thes_cs_CZ.dat /usr/share/mythes/thes_cs_CZ.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-cs/thes_cs_CZ.idx /usr/share/mythes/thes_cs_CZ.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-da/da_DK.aff /usr/share/hunspell/da_DK.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-da/da_DK.dic /usr/share/hunspell/da_DK.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-da/th_da_DK.dat /usr/share/mythes/th_da_DK.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-da/th_da_DK.idx /usr/share/mythes/th_da_DK.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_AT_frami.aff /usr/share/hunspell/de_AT.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_AT_frami.dic /usr/share/hunspell/de_AT.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_CH_frami.aff /usr/share/hunspell/de_CH.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-de/de_CH_frami.dic /usr/share/hunspell/de_CH.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-de/th_de_CH_v2.dat /usr/share/mythes/th_de_CH_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-de/th_de_CH_v2.idx /usr/share/mythes/th_de_CH_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-el/el_GR.aff /usr/share/hunspell/el_GR.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-el/el_GR.dic /usr/share/hunspell/el_GR.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_AU.aff /usr/share/hunspell/en_AU.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_AU.dic /usr/share/hunspell/en_AU.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_CA.aff /usr/share/hunspell/en_CA.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_CA.dic /usr/share/hunspell/en_CA.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_ZA.aff /usr/share/hunspell/en_ZA.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-en/en_ZA.dic /usr/share/hunspell/en_ZA.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-et/et_EE.aff /usr/share/hunspell/et_EE.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-et/et_EE.dic /usr/share/hunspell/et_EE.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-gd/dictionaries/gd_GB.aff /usr/share/hunspell/gd_GB.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-gd/dictionaries/gd_GB.dic /usr/share/hunspell/gd_GB.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-gl/gl_ES.aff /usr/share/hunspell/gl_ES.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-gl/gl_ES.dic /usr/share/hunspell/gl_ES.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-gl/thesaurus_gl.dat /usr/share/mythes/th_gl_ES_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-gl/thesaurus_gl.idx /usr/share/mythes/th_gl_ES_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-gu/gu_IN.aff /usr/share/hunspell/gu_IN.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-gu/gu_IN.dic /usr/share/hunspell/gu_IN.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-he/he_IL.aff /usr/share/hunspell/he_IL.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-he/he_IL.dic /usr/share/hunspell/he_IL.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-hi/hi_IN.aff /usr/share/hunspell/hi_IN.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-hi/hi_IN.dic /usr/share/hunspell/hi_IN.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-hr/hr_HR.aff /usr/share/hunspell/hr_HR.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-hr/hr_HR.dic /usr/share/hunspell/hr_HR.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-hu/hu_HU.aff /usr/share/hunspell/hu_HU.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-hu/hu_HU.dic /usr/share/hunspell/hu_HU.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-hu/th_hu_HU_v2.dat /usr/share/mythes/th_hu_HU_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-hu/th_hu_HU_v2.idx /usr/share/mythes/th_hu_HU_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-is/is.aff /usr/share/hunspell/is_IS.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-is/is.dic /usr/share/hunspell/is_IS.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-is/th_is.dat /usr/share/mythes/th_is_IS.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-is/th_is.idx /usr/share/mythes/th_is_IS.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-lt/lt.aff /usr/share/hunspell/lt_LT.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-lt/lt.dic /usr/share/hunspell/lt_LT.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-lv/lv_LV.aff /usr/share/hunspell/lv_LV.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-lv/lv_LV.dic /usr/share/hunspell/lv_LV.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-lv/th_lv_LV_v2.dat /usr/share/mythes/th_lv_LV_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-lv/th_lv_LV_v2.idx /usr/share/mythes/th_lv_LV_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-nl/nl_NL.aff /usr/share/hunspell/nl_NL.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-nl/nl_NL.dic /usr/share/hunspell/nl_NL.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-no/nb_NO.aff /usr/share/hunspell/nb_NO.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-no/nb_NO.dic /usr/share/hunspell/nb_NO.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-no/th_nb_NO_v2.dat /usr/share/mythes/th_nb_NO_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-no/th_nb_NO_v2.idx /usr/share/mythes/th_nb_NO_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-no/nn_NO.aff /usr/share/hunspell/nn_NO.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-no/nn_NO.dic /usr/share/hunspell/nn_NO.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-no/th_nn_NO_v2.dat /usr/share/mythes/th_nn_NO_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-no/th_nn_NO_v2.idx /usr/share/mythes/th_nn_NO_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-oc/oc_FR.aff /usr/share/hunspell/oc_FR.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-oc/oc_FR.dic /usr/share/hunspell/oc_FR.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-pl/pl_PL.aff /usr/share/hunspell/pl_PL.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-pl/pl_PL.dic /usr/share/hunspell/pl_PL.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-pl/th_pl_PL_v2.dat /usr/share/mythes/th_pl_PL_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-pl/th_pl_PL_v2.idx /usr/share/mythes/th_pl_PL_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-ro/ro_RO.aff /usr/share/hunspell/ro_RO.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-ro/ro_RO.dic /usr/share/hunspell/ro_RO.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-ro/th_ro_RO_v2.dat /usr/share/mythes/th_ro_RO_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-ro/th_ro_RO_v2.idx /usr/share/mythes/th_ro_RO_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-sk/sk_SK.aff /usr/share/hunspell/sk_SK.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-sk/sk_SK.dic /usr/share/hunspell/sk_SK.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-sk/th_sk_SK_v2.dat /usr/share/mythes/th_sk_SK_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-sk/th_sk_SK_v2.idx /usr/share/mythes/th_sk_SK_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-sl/sl_SI.aff /usr/share/hunspell/sl_SI.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-sl/sl_SI.dic /usr/share/hunspell/sl_SI.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-sl/th_sl_SI_v2.dat /usr/share/mythes/th_sl_SI_v2.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-sl/th_sl_SI_v2.idx /usr/share/mythes/th_sl_SI_v2.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-sr/sr.aff /usr/share/hunspell/sr.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-sr/sr.dic /usr/share/hunspell/sr.dic 

cp /opt/collaboraoffice5.3/share/extensions/dict-sv/sv_FI.aff /usr/share/hunspell/sv_FI.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-sv/sv_FI.dic /usr/share/hunspell/sv_FI.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-sv/sv_SE.aff /usr/share/hunspell/sv_SE.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-sv/sv_SE.dic /usr/share/hunspell/sv_SE.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-sv/th_sv_SE.dat /usr/share/mythes/th_sv_SE.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-sv/th_sv_SE.idx /usr/share/mythes/th_sv_SE.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-te/te_IN.aff /usr/share/hunspell/te_IN.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-te/te_IN.dic /usr/share/hunspell/te_IN.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-uk/uk_UA.aff /usr/share/hunspell/uk_UA.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-uk/uk_UA.dic /usr/share/hunspell/uk_UA.dic

cp /opt/collaboraoffice5.3/share/extensions/dict-uk/th_uk_UA.dat /usr/share/mythes/th_uk_UA.dat
cp /opt/collaboraoffice5.3/share/extensions/dict-uk/th_uk_UA.idx /usr/share/mythes/th_uk_UA.idx

cp /opt/collaboraoffice5.3/share/extensions/dict-vi/vi_VN.aff /usr/share/hunspell/vi_VN.aff
cp /opt/collaboraoffice5.3/share/extensions/dict-vi/vi_VN.dic /usr/share/hunspell/vi_VN.dic

apt-get -y remove --purge collaboraoffice5.3-dict* 

# Cleanup
rm -rf /var/lib/apt/lists/*
