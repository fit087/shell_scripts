echo -e '\nCurrent state'
set -v 
# set -x
ls
rm abort.run
rm *.part*
rm *.pvtu
rm *.npart
rm *.rst*
rm *.dat
rm *.info*
rm *.epart
set +v
# set +x
echo -e '\nFinal State'
# set -v
set -x
ls
# { set +v; } 2>/dev/null
{ set +x; } 2>/dev/null
echo -e '\nThe directory has taken to the state before the 2nd run of the solver within the workflow 3'
