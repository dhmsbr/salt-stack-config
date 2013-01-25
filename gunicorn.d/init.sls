gunicorn:
  - pip.installed

/etc/gunicorn.d:
  file.managed:
    - source: salt://gunicorn/gunicorn.d