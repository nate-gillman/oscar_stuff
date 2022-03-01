# Launching interactive jobs using Slurm scheduler on Oscar

### Requesting a 4 hour interactive GPU job with 1 core and 63gb of memory
```interact -q gpu -g 1 -t 04:00:00 -m 63g```

### Requesting a 4 hour interactive GPU job with 1 core and 63gb of memory on the 3090 condo (c.f. 2/3/22 email)
```interact -q 3090-gcondo -g 1 -t 04:00:00 -m 63g```

### Requesting an 8 hour interactive CPU job with 1 core and 31gb of memory
```interact -n 1 -t 8:00:00 -m 31g```

### Checking status of all job requests on the Condo
```condo cs-3090-gcondo```

### Checking usage statistics for all GPU nodes on Oscar
```nodes gpu```
