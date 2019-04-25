#!/bin/bash

set -e

N_NODES=${N_NODES:-"100"}
NODE_FORMAT=${NODE_FORMAT:-"dockeropenmpi_mpi_node_%q"}

for node in $(seq 1 $N_NODES)
do
    node_name=$(printf $NODE_FORMAT $node)
    if ping -c1 $node_name 2 > &1 > /dev/null
    then 
        echo $node_name
    else
        break
    fi
done