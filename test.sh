#!/bin/bash


source gpfs_functions

if is_node_gpfs_manager ; then
   echo `hostname -s`" is the manager."  
else
   echo `hostname -s`" is not the manager."  
fi

MANAGER=$(get_manager_name)
echo "${MANAGER} is the cluster manager."

