if [ -n "$TZ" ] ; then
    ln -snf "/usr/share/zoneinfo/$TZ" /etc/localtime && echo "$TZ" > /etc/timezone
fi
if [ ! -e /data/snac2/server.json ]; then
    echo -ne "0.0.0.0\r\n8001\r\nsocials.theraphael0000.ch\r\n\r\n\r\n" | snac init /data/snac2
    snac adduser /data/snac2 raphael
fi

snac httpd /data/snac2
