# Saltstack Playground

This project can you with a environment when you can perform you salt server and minion tests.

# Dependency

Install vagrant vbguest plugin, this is needed to sync folders

```
vagrant plugin install vagrant-vbguest
```

# Seting up environment

- Go inside server directory and run vagrant up, wait for it to finish.

```
cd server
vagrant up
```

- Once finished, go inside minion directory and run vagrant up.

```
cd minion
vagrant up
```

- Now ssh into server machine and approve your minion.

```
cd server
vagrant ssh 
$ sudo salt-key -a minion
```

- Now go to /srv/salt for code. and try applying salt state to minion, it should work.

```
$ cd /srv/salt
$ sudo salt "minion" state.apply
```

- If everything is successful, you should see "hello world" app at http://192.168.33.11:8000 on your host machine. Not critical though, if it doesn't work :P, a successful apply of state is good enough to verify thee setup.

- Great now your testing environment is up :).
