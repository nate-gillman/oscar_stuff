# Requesting a 4 hour interactive GPU job with 1 core and 63gb of memory
interact -q gpu -g 1 -t 04:00:00 -m 63g

# Requesting a 1 hour interactive CPU job with 1 core and 31gb of memory
interact -n 1 -t 01:00:00 -m 31g
