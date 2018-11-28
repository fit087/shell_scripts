#!/usr/bin/env bash

mesh_file=Building_fields.msh
project_name=building

# echo $project_name > input.gmsh
# cp ../01msh/$mesh_file ./$project_name.gmsh

# Files:
# building.gmsh
# input.gmsh

# First run
# mpirun -np 8 solver-mpi

# Files:
# building.gmsh
# input.gmsh
# help.opt

# mv help.opt building.opt
# BC=20181121building.opt
#cp ../02BC/$BC ./$project_name.opt

# 2nd run
# mpirun -np 8 solver-mpi

# Files: 
# building_00000.out
# building_00001.out
# building_00002.out
# building_00003.out
# building_00004.out
# building_00005.out
# building_00006.out
# building_00007.out
# building.gmsh
# building.in
# building.mat
# building.msh
# building.opt
# building.res
# building.stp
# help.opt
# input.pre
# lsfiles.txt
# run.sh

mat=20181121building.mat
# cp ../03mat/$mat $project_name.mat


# 3rd run
mpirun -np 8 solver-mpi
