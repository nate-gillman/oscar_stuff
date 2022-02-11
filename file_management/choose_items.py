import shutil, random, os
# dirpath = 'your/read/location'
# destDirectory = 'your/destination'

def choose_items(dirpath, destDirectory, how_many):
    """
    Chooses how_many number of things randomly from dirpath, and moves them
    into destDirectory. Example usage:
    choose_items("/Users/nate/Documents/men_all/", "/Users/nate/Documents/men/", 120)
    """
    filenames = random.sample(os.listdir(dirpath), how_many)
    for fname in filenames:
        srcpath = os.path.join(dirpath, fname)
        shutil.copy(srcpath, destDirectory)
    return None