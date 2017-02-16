include:
  - nodejs-package

hwass-user:
  user.present:
    - name : hwass
    - home : /home/hwass

git-client-package:
  pkg.installed:
    - name : git

hwass-source:
  git.latest:
    - name : https://github.com/dvopsway/hwaas.git
    - rev : master
    - target : /home/hwass/hwass-site
    - require:
      - user: hwass-user
      - pkg: git-client-package

hwass-npm-install:
  cmd.wait:
    - name : npm install
    - cwd : /home/hwass/hwass-site
    - watch :
      - git : hwass-source
    
hwass-build-script:
  cmd.wait:
    - name : npm run-script build
    - cwd : /home/hwass/hwass-site
    - watch :
      - git : hwass-source
