redis:
  cmd.script:
    - name: rediscompile.sh
    - source: salt://redis/rediscompile.sh
    - unless: test -x /usr/local/bin/redis-cli