rm umbrella*
rm kk
module load GROMACS/2018.2-foss-2018b
while read i lista; do
cp ../$i/umbrella${i}_pullx.xvg  .
cp ../$i/umbrella${i}_pullf.xvg  .
cp ../$i/umbrella$i.tpr  .
echo $i >> kk
head -n 20 umbrella${i}_pullx.xvg | grep '0.000'  >> kk
#ls *.tpr | sort  -V > tpr-files.dat
#ls *x.xvg | sort  -V > pullx-files.dat
#ls *f.xvg | sort  -V > pullf-files.dat
done <lista
#ugmx_mpi wham -it tpr-files.dat -ix pullx-files.dat -o -hist -unit kCal -tol 1e-06
#-e el tiempo máximo más corto en ps
gmx wham -it tpr-files.dat -if pullf-files.dat -o -hist -unit kT -tol 1e-06 -bins 400 -b 2000 -e 50000
