######### Supporting code for the paper ##########

Here we include the code necessary to obtain the results in the paper.

The majority of the code requires a compiled version of Lammps. We used the 21 July 2020 version for these calculations running on Linux (kernel 3.10.0) with standard libraries.
The code for the PMF simulations requires Gromacs 2018.2 instead.
There are seven directories in this archive. The numbered directories correspond to a summary of the different simulations we carried out, and each one contains a separate readme.txt file detailing its contents.
The 'Reaction_files' directory, contains reaction maps used by the dynamic algorithm in several of the previous directories.


################    LAMMPS   ################
Instructions on how to compile Lammps are provided at https://docs.lammps.org/Build_make.html.

1- In a clean directory, download the last version of Lammps (https://www.lammps.org/download.html)
2- Compile the following packages first:
 a) 'make yes-USER-MISC' (To compute viscosity and enable Wang-Frenkel potential for the Mpipi model)
 b) 'make yes-USER-REACTION' (Enable the dynamic algorithm)
 c) 'make yes-MOLECULE' (Model molecular systems)
 d) 'make yes-RIGID' (Enforce rigid constraints on collections of atoms or particles.)
3- Compile lammps including the 'pair_ljlambda.cpp' and 'pair_ljlambda.h' files to use HPS-Cation-pi potential with 'make mpi' or 'make serial' depending on whether parallelisation is desired.
4- Copy the resulting executable file (lmp_serial or lmp_mpi) to the desired directory with all the files required to run the simulations.
5. Run the simulation. ./lmp_serial -i input-script.dat


######### GROMACS #########
Detailed instructions on how to install GROMACS are available at https://manual.gromacs.org/documentation/current/install-guide/index.html.
Summary of the sequence of commands to execute:

tar xfz gromacs-2022.tar.gz
cd gromacs-2022
mkdir build
cd build
cmake .. -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON
make
make check
sudo make install
source /usr/local/gromacs/bin/GMXRC

Once installed, follow the instructions in the readme.txt file in '1-PMFs' directory to run the simulations. 

