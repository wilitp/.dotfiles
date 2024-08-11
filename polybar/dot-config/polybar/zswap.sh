#!/bin/sh

# cantidad zswappeada
t=$(cat /proc/meminfo | grep zswapped -i | awk '{print $2}')

# cantidad swapeada realmente en el disco
# (espacio total - espacio libre) - cantidad zswappeada
r=$(echo $(cat /proc/meminfo | grep swaptotal -i | awk '{print $2}') - $(cat /proc/meminfo | grep swapfree -i | awk '{print $2}') - $t | bc)


echo "$r $t"


