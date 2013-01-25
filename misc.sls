git:
  pkg:
    - installed

screen:
  pkg:
    - installed

python-setuptools:
  pkg:
    - installed

python-pip:
  pkg:
    - installed
    - require:
      - pkg: python-setuptools