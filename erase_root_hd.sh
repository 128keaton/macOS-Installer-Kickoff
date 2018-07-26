#!/bin/sh
## PUT ME IN /Library/Scripts ##
diskutil apfs deleteContainer disk1
diskutil eraseDisk JHFS+ Macintosh\ HD /dev/disk0
