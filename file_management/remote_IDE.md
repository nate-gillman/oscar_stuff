# Fixing problems with remote IDE on Oscar

Sometimes my Remote IDE (sshing to Oscar through VSCode) doesn't work... to fix it, I need to edit inside the following doc on my local machine:

```vi ~/.ssh/known_hosts```

Inside this doc, I need to remove (dd) all lines beginning with "Oscar2", then save and exit (wq!) then re-try ssh-ing into Oscar and opening an IDE session with VSCode.
