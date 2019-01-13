#!/bin/sh

# Fix domain name resolution from jails
cp /etc/resolv.conf /etc/hosts /opt/lool/systemplate/etc/

# Replace trusted host and set admin username and password
perl -pi -e "s/localhost<\/host>/${domain}<\/host>/g" /etc/loolwsd/loolwsd.xml
perl -pi -e "s/<username (.*)>.*<\/username>/<username \1>${username}<\/username>/" /etc/loolwsd/loolwsd.xml
perl -pi -e "s/<password (.*)>.*<\/password>/<password \1>${password}<\/password>/" /etc/loolwsd/loolwsd.xml
perl -pi -e "s/<server_name (.*)>.*<\/server_name>/<server_name \1>${server_name}<\/server_name>/" /etc/loolwsd/loolwsd.xml
perl -pi -e "s/<allowed_languages (.*)>.*<\/allowed_languages>/<allowed_languages \1>${dictionaries:-de_DE en_GB en_US es_ES fr_FR it nl pt_BR pt_PT ru}<\/allowed_languages>/" /etc/loolwsd/loolwsd.xml

# Start loolwsd
su -c "/usr/bin/loolwsd --version --o:sys_template_path=/opt/lool/systemplate --o:lo_template_path=/opt/collaboraoffice6.0 --o:child_root_path=/opt/lool/child-roots --o:file_server_root_path=/usr/share/loolwsd ${extra_params}" -s /bin/bash lool
