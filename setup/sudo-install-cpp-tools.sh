#!/bin/bash
############################
# This script installs dependencies for debugging and compiling openMPI applications (e.g. Palabos)
############################

# install debugger:
sudo apt install ddd vagrind valkyrie
# install mpicxx:
# http://lsi.ugr.es/jmantas/pdp/ayuda/datos/instalaciones/Install_OpenMPI_en.pdf
sudo apt install openmpi-bin libopenmpi-dev
sudo apt-get install libcr-dev mpich mpich-doc
# install Gnu Scientific Library:
sudo apt install libgsl-dev

