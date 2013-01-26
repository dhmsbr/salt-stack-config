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

wordpress:
  pkg:
    - installed
