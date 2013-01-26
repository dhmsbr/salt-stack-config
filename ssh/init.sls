ssh:
  pkg.installed:
    - name: openssh-server
  service.running:
    - require:
      - pkg: openssh-server
    - watch:
      - file: /etc/ssh/sshd_config

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/sshd_config
    - mode: 644
    - user: root
    - group: root

/home/root/.ssh:
  file.directory:
    - makedirs: True
    - mode: 700

/home/root/.ssh/authorized_keys:
  file.managed:
    - source: salt://ssh/authorized_keys
    - mode: 600
    - user: root
    - group: root
