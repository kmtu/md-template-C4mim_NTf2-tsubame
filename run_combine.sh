#!/bin/sh
cd ${PBS_O_WORKDIR} 
python3=/home/usr4/15IH0431/local/anaconda3/bin/python3
combineEngtraj="python3 $HOME/local/decond/python/combineEngtraj.py"

$combineEngtraj ermod-*/soln/engtraj.h5
