# Using screen on Oscar

See the ccv docs ([https://docs.ccv.brown.edu/oscar/software/screen](https://docs.ccv.brown.edu/oscar/software/screen)) for more information. 

### Beginning a screen session

- ssh into Oscar as normal
- Take note of the login node (probably login005 or login006)
- Start a new screen session with ```screen -S screen-login005```. It's important to include the name of the login node in the name of the screen session.
- Launch interactive session, via ```interact -q 3090-gcondo -g 1 -t 1:30:00 -m 63g```
- Do some fun coding!!
- Exit screen session by exiting terminal

### Resuming an active screen session

- ssh into Oscar as normal
- List running screens by executing ```screen -ls```
- If the screen session you want to join is on login005, say, but you're not on that login node, then execute ```ssh login005``` to join that node
- From the same login node that the screen session was launched from, resume the session via ```screen -r screen-login005```

### Killing a screen session

- ```screen -XS screen-login005 quit```
