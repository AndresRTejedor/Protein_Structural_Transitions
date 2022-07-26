cp ../4-Minimization/em*.gro .
cp ../4-Minimization/topol*  .
cp ../4-Minimization/*.itp .


for i in {0..40}
do
echo $i
gmx grompp -f npt.mdp -c em$i.gro -p topol$i.top -r em$i.gro -o npt$i.tpr
cp 0.sub $i.sub
sed -i "140s/npt0/npt$i/" $i.sub
sbatch $i.sub

done
cd ..

