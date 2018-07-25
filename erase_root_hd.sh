#!/bin/sh
diskutil apfs deleteContainer disk1
diskutil eraseDisk JHFS+ Macintosh\ HD /dev/disk0
