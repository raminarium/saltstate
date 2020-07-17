php:
  pkg.installed:
    - name: php

include:
  - php.php-common
  - php.php-curl
  - php.php-mysql
  - php.php-fpm
  - php.php-mcrypt