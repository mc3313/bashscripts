#Loop through sets of files and concatenate them into a single file.
#Loop relies on for loop with method of listing ordered number of files.
#At the end, change a repeating string throughout the newly created file.
cat Field_Bz_1_?.table > Field_Bz_all.table;
for i in `ls Field_Bz_1_1?.table`; do
  cat Field_Bz_all.table $i > file.tmp;
  rm -f Field_Bz_all.table;
  mv -f file.tmp Field_Bz_all.table;
done ;
for i in `ls Field_Bz_1_2?.table`; do cat Field_Bz_all.table $i > file.tmp; rm -f Field_Bz_all.table; mv -f file.tmp Field_Bz_all.table; done;
for i in `ls Field_Bz_1_3?.table`; do cat Field_Bz_all.table $i > file.tmp; rm -f Field_Bz_all.table; mv -f file.tmp Field_Bz_all.table; done;
for i in `ls Field_Bz_1_4?.table`; do cat Field_Bz_all.table $i > file.tmp; rm -f Field_Bz_all.table; mv -f file.tmp Field_Bz_all.table; done;
for i in `ls Field_Bz_1_5?.table`; do cat Field_Bz_all.table $i > file.tmp; rm -f Field_Bz_all.table; mv -f file.tmp Field_Bz_all.table; done;
for i in `ls Field_Bz_1_6?.table`; do cat Field_Bz_all.table $i > file.tmp; rm -f Field_Bz_all.table; mv -f file.tmp Field_Bz_all.table; done;
for i in `ls Field_Bz_1_7?.table`; do cat Field_Bz_all.table $i > file.tmp; rm -f Field_Bz_all.table; mv -f file.tmp Field_Bz_all.table; done;
rm -f file.tmp; 
sed -i.bak -e "s/199 1 1 2/header 199 1 1 2/" Field_Bz_all.table;