wordpress:
  pkg:
    - installed

# wordpress package installs it in `/usr/share/wordpress`
/var/www/wordpress:
  file.symlink:
    - target: /usr/share/wordpress

/var/www/wordpress:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - recurse:
      - user
      - group

/usr/share/wordpress:
  file.directory:
    - user: www-data
    - group: www-data
    - mode: 755
    - recurse:
      - user
      - group

wordpress:
  mysql_database.present
  mysql_grants.present:
    - grant: all privileges
    - database: wordpress.*
    - user: wordpress

wordpress:
  mysql_user.present:
    - host: localhost
    - password: <INSERT MYSQL USER PASSWORD HERE>