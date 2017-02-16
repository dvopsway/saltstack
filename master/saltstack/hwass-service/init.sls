include:
  - hwass-site

supervisor:
  pkg.installed:
    - require: 
      - sls: hwass-site

/etc/supervisor/conf.d:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode

/etc/supervisord.conf:
  file.managed:
    - source: salt://hwass-service/supervisor.conf
    - require: 
      - pkg: supervisor

supervisord:
  service.running:
    - require:
      - pkg: supervisor
    - watch:
      - file: /etc/supervisord.conf
