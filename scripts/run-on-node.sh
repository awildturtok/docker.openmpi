#!/bin/bash

if [ "$OMPI_COMM_WORLD_RANK" = $1 ] 
then 
        $2 $3 
        #python /home/mpirun/mpi4py_benchmarks/matrix_vector_product.py
else 
        $3
        #python /home/mpirun/mpi4py_benchmarks/matrix_vector_product.py
fi
