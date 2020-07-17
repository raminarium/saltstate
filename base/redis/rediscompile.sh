%!/bin/bash
cd /tmp
#wget -c http://download.redis.io/redis-stable.tar.gz
tar xvf redis-stable.tar.gz
cd redis-stable
make
cp /src/resdis-cli /usr/local/bin/
make install
cd utils
./install_server.sh