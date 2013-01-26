git:
  pkg:
    - installed

screen:
  pkg:
    - installed

python-setuptools:
  pkg:
    - installed

easy_install pip:
  cmd:
    - run
    - onlyif: 'test ! -e /usr/bin/pip'
