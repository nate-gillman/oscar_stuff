# Useful commands for file management on any Linux system

### For zipping all files in the current directory
```zip -r archive.zip .```

### To zip a directory recursively
```zip –r filename.zip directory_name```

### To open a .tar file
```tar -xvf file.tar```

### For computing how much data is being used in each folder in the current directory; gives detailed breakdown
```
module load ncdu
ncdu .
```

### For computing how much data is being used in each folder in the current directory; gives less detailed breakdown
```du -s -m .```

### For computing how much data is being used in the folder nates_stuff in the current directory
```du -sh nates_stuff/```

### For computing how much data is being used in the subdirectories of the folder nates_stuff in the current directory
```du -shc nates_stuff/*```

### For removing a git large file I accidentally committed

[[https://stackoverflow.com/questions/33360043/git-error-need-to-remove-large-file](https://marcosantonocito.medium.com/fixing-the-gh001-large-files-detected-you-may-want-to-try-git-large-file-storage-43336b983272)](https://marcosantonocito.medium.com/fixing-the-gh001-large-files-detected-you-may-want-to-try-git-large-file-storage-43336b983272)
