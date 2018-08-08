#!/bin/sh
## PUT ME IN /Library/Scripts ##
#!/bin/sh
echo "Unmounting disk /dev/disk0"
diskutil unmountDisk /dev/disk0
echo "Unmounted disk successfully"
if diskutil apfs deleteContainer disk1 ; then
    echo "Successfully removed apfs container"
else
    echo "Unable to remove apfs container..erasing anyway"
fi

echo "Erasing /dev/disk0"
diskutil eraseDisk JHFS+ Macintosh\ HD /dev/disk0
echo "New name for /dev/disk0: Macintosh HD"
exit 0
