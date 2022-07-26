In order to run NPT simulations and study the evolution of the beta-shit transitions, one needs the following files:

LAMMPS script: HPS_catpi_*_RNA_new.lmp (in current directory)
Configuration file: *_NPT310.lmp (Data files directory)
Reaction maps: map* polimer* (Reaction files directory)

For each specific system (FUS, PLD-FUS and A-LCD-hnRNPA1) there are specific LAMMPS script, data and reaction files. 

The same scripts can be used for different simulations introducing the following changes:
NPT simulations: Use the script as it is only changing the temperature and choosing the corresponding data file.
NPT simulations with RNA: Use the script as it is and use the correct data file from the 'Data_files_RNA' directory.

In the 'Output_example' directory, a sample NPT simulation is provided for the system A-LCD-hnRNPA1 at 360K.
Please note that the trajectory included only represents the first chunk of the whole simulation
