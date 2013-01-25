gunicorn:
  pip.installed:
    - name: gunicorn
    - require:
      - pkg: python-pip

#/etc/gunicorn.d:
#  file.managed:
#    - source: salt://gunicorn/gunicorn.d

# add managed file for above
# add managed file for csd?