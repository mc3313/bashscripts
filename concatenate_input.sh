#path to data = dir
dir='data/'
cat data/Field_Bz_1_?.table > all_Field_Bz.table;
for i in `ls data/Field_Bz_1_1?.table`; do cat all_Field_Bz.table $i > file.tmp; rm -f all_Field_Bz.table; mv -f file.tmp all_Field_Bz.table; done;
for i in `ls data/Field_Bz_1_2?.table`; do cat all_Field_Bz.table $i > file.tmp; rm -f all_Field_Bz.table; mv -f file.tmp all_Field_Bz.table; done;
for i in `ls data/Field_Bz_1_3?.table`; do cat all_Field_Bz.table $i > file.tmp; rm -f all_Field_Bz.table; mv -f file.tmp all_Field_Bz.table; done;
for i in `ls data/Field_Bz_1_4?.table`; do cat all_Field_Bz.table $i > file.tmp; rm -f all_Field_Bz.table; mv -f file.tmp all_Field_Bz.table; done;
for i in `ls data/Field_Bz_1_5?.table`; do cat all_Field_Bz.table $i > file.tmp; rm -f all_Field_Bz.table; mv -f file.tmp all_Field_Bz.table; done;
for i in `ls data/Field_Bz_1_6?.table`; do cat all_Field_Bz.table $i > file.tmp; rm -f all_Field_Bz.table; mv -f file.tmp all_Field_Bz.table; done;
for i in `ls data/Field_Bz_1_7?.table`; do cat all_Field_Bz.table $i > file.tmp; rm -f all_Field_Bz.table; mv -f file.tmp all_Field_Bz.table; done;
rm -f file.tmp; 
sed -i.bak -e "s/199 1 1 2/header 199 1 1 2/" all_Field_Bz.table;