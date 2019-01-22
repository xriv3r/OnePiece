pip install supervisor

cd /etc; wget https://raw.githubusercontent.com/xriv3r/OnePiece/master/supervisord.conf
mkdir -p /etc/supervisor/
cd /etc/supervisor/; wget https://raw.githubusercontent.com/xriv3r/OnePiece/master/sample_program.conf

supervisord -c /etc/supervisord.conf
