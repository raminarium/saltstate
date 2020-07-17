mariadb-server:
  pkg.installed:
    - name: mariadb-server

mysql-service-enabled:
  service.running:
    - name: mariadb 
    - enable: true

root-password-set:
  mysql_query.run:
    - database: mysql
    - query: UPDATE user SET Password=PASSWORD('{{ salt['pillar.get']('mysql:lookup:rootDBPassword') }}') WHERE User='rootDBPassword';
    - connection_user: root
    - require:
      - pkg: mariadb-server
      - pkg: python-mysqldb

root-password-flush:
  mysql_query.run:
    - database: mysql
    - query: FLUSH PRIVILEGES;
    - connection_user: root
    - require:
      - pkg: mariadb-server
      - pkg: python-mysqldb