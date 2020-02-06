# Count the number of lines in files 

# slit at dipole exit (particle that surpass dipole gap before exiting dipole)
file1=100Tc_Gaus_TRAN_B/01_TO_DUMP1/SLIT010.DAT

#Particles that pass dipole (fully closed SLIT after dipole)
file2=100Tc_Gaus_TRAN_B/01_TO_DUMP1/SLIT011.DAT

sed -n '$=' $file1
sed -n '$=' $file2

#----------- Save to file -------------------------------
nout=$(sed -n '$=' $file1)
nin=$(sed -n '$=' $file2)
let "ntot = nout + nin"
echo 'Ntot = ' $ntot
echo '  Nout = ' $nout
echo '  Nin  = ' $nin
echo "Ntot  Nin   Nout" > count.txt
echo $ntot $nin $nout  >> count.txt

