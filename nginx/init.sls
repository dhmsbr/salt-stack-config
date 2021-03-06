# Make sure nginx is installed and up
nginx:
  pkg:
    - installed
  service.running:
    - require:
      - pkg: nginx
      - file: /etc/nginx
#      - file: /etc/nginx/htpasswd
    - watch:
      - file: /etc/nginx/*

/etc/nginx/timestamp:
  file.managed:
    - source: salt://nginx/timestamp

# Configuration files for nginx
/etc/nginx:
  file.recurse:
    - source: salt://nginx/config
    - user: root
    - group: root
    - file_mode: 644

#/etc/nginx/htpasswd:
#  file.recurse:
#    - source: salt://nginx/htpasswd
#    - user: www-data
#    - group: www-data
#    - dir_mode: 544
#    - file_mode: 444

/var/cache/nginx:
  file.directory:
    - makedirs: True

/var/www:
  file.directory:
    - makedirs: True
