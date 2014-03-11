#! /bin/sh
## Autoupdate host file with all folders like mydomain.FOLDER_SUFFIX
## pointing to DEFAULT_IP
## @todo take params from cli ex. $./hosts.sh ip suffix
## @todo check for root access

DEFAULT_IP=127.0.0.1
FOLDER_SUFFIX=local
IP=${3:-$DEFAULT_IP}

sed -i '/##automatic added by script/d' /etc/hosts
for D in *.$FOLDER_SUFFIX
do
echo "$IP $D ##automatic added by script" >> /etc/hosts 
done
exit 0