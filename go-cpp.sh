#!/bin/bash
############################
# .make.sh
# This script sets up git
############################

# install debugger:
sudo apt install ddd vagrind valkyrie
# install mpicxx:
# http://lsi.ugr.es/jmantas/pdp/ayuda/datos/instalaciones/Install_OpenMPI_en.pdf
sudo apt install openmpi-bin libopenmpi-dev
# install Gnu Scientific Library:
sudo apt install libgsl-dev

