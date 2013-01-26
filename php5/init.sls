mysql-pkgs:
  pkg.installed:
    - names:
      - mysql-server
      - mysql-client

php5-pkgs:
  pkg.installed:
    - names:
      - php5
      - php5-mysql
      - php5-fpm

php5-fpm:
  service.running:
    - require:
      - pkg: php5-fpm

/etc/php5/fpm/php.ini:
  file.managed:
    - source: salt://php5/php.ini
