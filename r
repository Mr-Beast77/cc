zram_size=5G    

# Turn on zram (One line command, No need to touch)
sudo modprobe zram && echo lz4 | sudo tee  /sys/block/zram0/comp_algorithm && echo $zram_size | sudo tee /sys/block/zram0/disksize && sudo mkswap --label zram0 /dev/zram0 && sudo swapon --priority 100 /dev/zram0

df -h
free -h

