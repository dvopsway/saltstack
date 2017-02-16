nodejs-repo:
  cmd.run:
    - name : curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -
    - creates : /etc/yum.repos.d/nodesource-el.repo

nodejs:
  pkg:
    - installed
    - require:
      - cmd: nodejs-repo
