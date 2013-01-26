wordpress:
  pkg:
    - installed

# wordpress package installs it in `/usr/share/wordpress`
/var/www/wordpress:
  file.symlink:
    - target: /usr/share/wordpress
    - file_mode: 755
    - user: www-data
    - group: www-data