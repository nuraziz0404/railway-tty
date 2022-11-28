from alpine

copy ./ttyd /etc/init.d/ttyd

run mkdir -p /run/openrc/; touch /run/openrc/softlevel;
run apk add --no-cache wget curl nano bash openrc
run wget https://github.com/tsl0922/ttyd/releases/download/1.7.2/ttyd.x86_64 -O /usr/bin/ttyd

run chmod a+x /etc/init.d/ttyd /usr/bin/ttyd
run rc-update add ttyd default

cmd /sbin/init
