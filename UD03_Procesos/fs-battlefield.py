#!/usr/bin/env python3

import random


positions_index = []
positions_fs = []
fs_list = ["APFS","btrfs","exFAT","ext3","ext4", "FAT16", "FAT32", "GlusterFS", "NTFS", "XFS"]

def test_positions(i):
    if i in positions_index:
        return False
    else:
        return True

def main():
    print (fs_list)
    print(random.randint(0,len(fs_list)))

if __name__ == "__main__":
    print( " MME - Roll and Write - Chapter 1")
    main()







