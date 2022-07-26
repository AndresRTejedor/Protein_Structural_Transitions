while read i lista; do
rm -rf $i
cp 0.sub $i.sub
sed -i "139s/umbrella0/umbrella$i/" $i.sub
mkdir $i
cd $i
cp ../npt$i.gro .
cp ../npt$i.cpt .
cp ../npt$i.cpt .
cp ../umbrella$i.tpr .
cp ../index$i.ndx .
cp ../$i.sub .
cp ../md_umbrella.mdp .
#cp ../frame-$i*.sh .
#sed -i "8s/md_umbrella/md_umbrellacas/" frame-$i*.sh 
cp ../*.itp .
#sh  frame-$i*.sh 
sbatch  $i.sub
cd ..
done <lista
