pip install supervisor

echo_supervisord_conf > /etc/supervisord.conf

supervisord -c /etc/supervisord.conf
