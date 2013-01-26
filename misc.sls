git:
  pkg:
    - installed

screen:
  pkg:
    - installed

easy_install pip:
  cmd:
    - run
    - onlyif: 'test ! -e /usr/bin/pip'
