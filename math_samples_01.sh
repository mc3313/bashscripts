#Obtain the size of the .ps image for info and use in croping the image
echo "Begin..." ;

b= 3 ;
let b=3 ;        echo "b = "$b ;
let "b += 5";    echo "b = "$b ;

#using double paranthesis 
(( b += 10 )) ;   echo "b = "$b ;
(( b *= 10 )) ;   echo "b = "$b ;
let "b /= 6";    echo "b = "$b ;

a=`expr 2 + 3` ; echo "a = "$a ;

#echo (( 2 + 3 )) ;   echo "a = "$a ;

c=`expr $a + $b` ; echo " a + b = c = "$c ;

#using double quotes
let "m = a + 5" ;  echo " m = "$m ;
#modulo
let "m = a % 5" ;  echo " m = "$m ;
#Floating point numbers require piping to 'bc'
echo "3.14+2.2" | bc ;
pi=3.14
echo "$pi*6.99" | bc

x=`echo "$pi * $a" | bc`
echo $x
exit;

