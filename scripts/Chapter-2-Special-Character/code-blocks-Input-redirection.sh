#! /bin/bash
# Reading lines in /etc/fstab


# /etc/fatab content
# # /etc/fstab: static file system information.
# # Use 'blkid' to print the universally unique identifier for a
# # device; this may be used with UUID= as a more robust way to name devices
# # that works even if disks are added and removed. See fstab(5).
File=/etc/fstab

{
  read line1;
  read line2;
} < $File

echo "First line in $File is:"
echo "$line1"
echo
echo "Second line in $File is:"
echo "$line2"

exit 0

############# result ##########################

# First line in /etc/fstab is:
# # /etc/fstab: static file system information.

# Second line in /etc/fstab is:
# #