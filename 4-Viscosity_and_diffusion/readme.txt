In order to run NVT simulations and compute viscosity, diffusion and variation of the free energy one needs the following files:

LAMMPS script: HPS_catpi_*_RNA_new_visc.lmp (in current directory)
Configuration file: *_NVT380_mut.lmp or *_NVT380.lmp (Data files directory)

For each specific system (FUS, PLD-FUS and A-LCD-hnRNPA1) there are specific LAMMPS script and data files.

The same scripts can be used for the pure system without reactions, the system with reactions in the steady state, and the same cases but including RNA.
One has introduce the following changes:
Viscosity without RNA: Use the script as it is only changing the temperature and choosing the corresponding data file either pure without reactions (./Data_files/Disordered) or with the reactions (./Data_files/Mutated) .
Viscosity with RNA: Use the script as it is and use the correct data file from the './Data_files_RNA/*' directory either pure (Disordered) or with the reactions (Mutated).

In the 'Output_example' directory, a sample NVT simulation is provided for the system of A-LCD-hnRNPA1 at 380K.
Please note that the trajectory included only represents the first chunk of the whole simulation.
The viscosity is calculated from the F.gt file, and diffusion and free energy variation is computed using the trajectory.