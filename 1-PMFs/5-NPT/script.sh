rm distancias
for i in {1..40}
do
echo $i
t=.2
gmx distance -n index.ndx -s  npt$i.gro  -select 'com of group "ChainD" plus com of group "ChainB"' -oall distance$i 
awk '{print $2}' distance$i.xvg | tail -n 1 >> distancias
done

