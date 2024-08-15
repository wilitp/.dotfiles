#!/bin/sh

# cantidad zswappeada
t=$(cat /proc/meminfo | grep zswapped -i | awk '{print $2}')

# cantidad swapeada realmente en el disco
# (espacio total - espacio libre) - cantidad zswappeada
r=$(echo $(cat /proc/meminfo | grep swaptotal -i | awk '{print $2}') - $(cat /proc/meminfo | grep swapfree -i | awk '{print $2}') - $t | bc)


echo -n d=$(numfmt --to=iec-i --suffix=B --format="%9.2f" $(($r * 2**10))) z=$(numfmt --to=iec-i --suffix=B --format="%9.2f" $(($t * 2**10)))


