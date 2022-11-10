#!/bin/bash

# ARGUMENTS:

# 1: n_modes
# 2: gain factor alpha
# 3: gain factor floor
# 4: TT gain factor


milk << EOF
readshmim aol1_mgainfact
mload milkimagegen
imgen.mkdist imd $1 1 1 1
imd1=imd/$1
imd2=(1.0-imd1)^$2
imd3=(1-$3)*imd2+$3
saveFITS imd3 "imd3.fits"
cp imd3 aol1_mgainfact
listim
exitCLI
EOF

./setpyrttgain $4

# aol1_mmultfact 
