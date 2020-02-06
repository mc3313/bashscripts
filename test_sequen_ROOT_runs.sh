# chmod +x test_sequen_ROOT_runs.sh; test_sequen_ROOT_runs.sh
echo "Test running ROOT scripts sequentially."

root -l -b -q test1.C
root -l -b -q test2.C

#For unknown reasons, the first call does not work. The second one does.
# Best to use gROOT->ProcessLine(".x test2.C");
#  to run other scripts from first one in ROOT