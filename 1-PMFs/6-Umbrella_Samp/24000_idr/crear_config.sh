cp ../../5-NPT/npt*.gro .
cp ../../5-NPT/npt*.cpt .
cp ../../5-NPT/top* .
for i in {0..40}
do
echo $i
#gmx_mpi make_ndx -f npt$i.gro -o index$i.ndx < in.txt
gmx make_ndx -f npt$i.gro -o index$i.ndx < in.txt
gmx grompp -f md_umbrella.mdp -c npt$i.gro -t npt$i.cpt -p topol$i.top -r npt$i.gro -n index$i.ndx -o umbrella$i.tpr -maxwarn 1000
#gmx_mpi grompp -f npt_umbrella.mdp -c npt$i.gro -n index$i.ndx -p topol$i.top -r npt$i.gro  -o nptu$i.tpr
#mpirun -np 24 gmx_mpi mdrun -deffnm nptu$i

#gmx_mpi grompp -f npt.mdp -c em$i.gro -p topol$i.top -r em$i.gro -o npt$i.tpr
#mpirun -np 24 gmx_mpi mdrun -v -deffnm npt$i 




done

