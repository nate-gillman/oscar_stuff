# For zipping all files in the current directory
zip -r archive.zip .

# To zip a directory recursively
zip –r filename.zip directory_name

# To open a .tar file
tar -xvf file.tar

# For computing how much data is being used in each folder in the current directory; gives detailed breakdown
module load ncdu
ncdu .

# For computing how much data is being used in each folder in the current directory; gives less detailed breakdown
du -s -m .

# For computing how much data is being used in the folder nates_stuff in the current directory
du -sh nates_stuff/

# For computing how much data is being used in the subdirectories of the folder nates_stuff in the current directory
du -shc nates_stuff/*
