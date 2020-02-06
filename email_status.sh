echo "Sending email message of status"
echo "NODE= $1"
mail -s "NODE= $1 has finished." "portillo@frib.msu.edu" << EOF
EOF
