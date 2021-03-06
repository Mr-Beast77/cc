#!/bin/bash
testing_location=/mnt/ramdisk
testing_size=1G
# server throughput (write speed)
echo 'Server throughput(write)...'
dd if=/dev/zero of=$testing_location/test1.img bs=$testing_size count=1 oflag=dsync

# server latency
echo '
Server latency(write)...'
dd if=/dev/zero of=$testing_location/test2.img bs=512 count=1000 oflag=dsync

rm -rf $testing_location/test1.img $testing_location/test2.img
testing_location=/tmp
testing_size=1G
# server throughput (write speed)
echo 'Server throughput(write)...'
dd if=/dev/zero of=$testing_location/test1.img bs=$testing_size count=1 oflag=dsync

# server latency
echo '
Server latency(write)...'
dd if=/dev/zero of=$testing_location/test2.img bs=512 count=1000 oflag=dsync

rm -rf $testing_location/test1.img $testing_location/test2.img

df -h
free -h
nproc

fallocate -l 9G /mnt/ramdisk/test_file1.img
