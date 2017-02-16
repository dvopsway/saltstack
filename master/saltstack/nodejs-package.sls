#nodejs-repo:
#  pkgrepo.managed:
#    - humanname : nodejs nodesource repo
#    - mirrorlist : https://rpm.nodesource.com/pub_6.x/el/6/$basearch
#    - gpgcheck : 0

nodejs:
  pkg:
    - installed
#    - require:
#      - pkgrepo: nodejs-repo
