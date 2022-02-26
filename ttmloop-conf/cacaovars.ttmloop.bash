# cacao environment variables for setup
# This file will be sourced by cacao-setup

# 1 if DM actuators are on a coordinate grid
# This informs processes if a spatial relationship exists
# between DM actuators
export CACAO_DMSPATIAL="0"

# Deformable mirror (DM) size
# If DM is single dimension, enter "1" for DMsize
#
export CACAO_DMxsize="2"
export CACAO_DMysize="1"

export CACAO_LOOPWORKDIR="ttmloop-workdir"
export CACAO_DMINDEX="02"
export CACAO_LOOPNUMBER="2"

# input WFS stream
export CACAO_WFSSTREAM="dm01disp"

export CACAO_LOOPDATALOGDIR="$(pwd)/datalogdir"

# ========================================
#       FPS processes to be set up
# ========================================

# DM combination
# Manages mutipe DM channels
#
export CACAO_FPSPROC_DMCOMB="ON"

# Delay stream: emulates time lag in hardware
# Used to simulate a time lag
#
#export CACAO_FPSPROC_STREAMDELAY="ON"

# MVM lop on GPU: used to simulate hardware
#
#export CACAO_FPSPROC_SIMMVMGPU="ON"

# Measure hardware latency
#
export CACAO_FPSPROC_MLAT="ON"

# Acquire WFS stream
#
export CACAO_FPSPROC_ACQUWFS="ON"

# Acquire linear RM (zonal)
#
export CACAO_FPSPROC_ACQLINZRM="ON"

# Do not acquire low-order modal RM
#
export CACAO_FPSPROC_ACQLINLORM="OFF"


# Compute control matrix - Fourier
#
export CACAO_FPSPROC_COMPFCM="OFF"

# Compute control matrix - straight
#
export CACAO_FPSPROC_COMPSCM="ON"


# Extract control modes
#
export CACAO_FPSPROC_MODESEXTRACTWFSGPU="OFF"

# Control loop
#
export CACAO_FPSPROC_AOLOOP_RUN="ON"

