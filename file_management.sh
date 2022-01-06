# For zipping all files in the current directory
zip -r archive.zip .

# For computing how much data is being used in each folder in the current directory; gives detailed breakdown
module load ncdu
ncdu .

# For computing how much data is being used in each folder in the current directory; gives less detailed breakdown
du -s -m .

# For computing how much data is being used in the folder nates_stuff in the current directory
du -sh nates_stuff/
