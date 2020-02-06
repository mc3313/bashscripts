#!/bin/bash
# copy necessary files 
# chmod +x copy.sh; copy.sh
dirNEW='.'
dirOLD='/projects/fribmappers_data/calibration/calib_FSQ5_S1_361Amps';
#echo $dirOLD
cp $dirOLD/readme.txt $dirNEW
cp $dirOLD/rotScan_calib_Model_Tracked_Sensors_v2018_09_13e.C $dirNEW
cp $dirOLD/plot_ring_center_RcX_RcY.C $dirNEW
cp $dirOLD/Sensor_Ring_Measurements_Analysis_MP.m $dirNEW
cp $dirOLD/sensor_data.mat $dirNEW
cp $dirOLD/transformation_T.m $dirNEW
#cp $dirOLD/sensor_calibration_72.m $dirNEW
#cp $dirOLD/dF72.m $dirNEW
cp $dirOLD/th_scan_2018_08_01_fids.xlsx $dirNEW
#cp $dirOLD/th_scan_2018_08_01_fids_NoBumpCorr.xlsx $dirNEW
