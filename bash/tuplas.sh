#!bin/bash.exe

#clear

# Initialization:

# Elemento a Elemento
tupla1[1]="primer valor"
tupla1[2]="secondo valore"
echo "tupla1 = "${tupla1[*]}
echo "tupla1 "${#tupla1[*]}

# Initialization in 1 line:

# Initialization giving position and values
tupla2=([1]=21 [2]=12.3 [4]=21.3 [5]=2*4 [6]=5/3)
echo "tupla2 = "${tupla2[*]}
# Integer operations
tupla2_1=([1]=21 [2]=12.3 [4]=21.3 [5]=$(expr 2 \* 4) [6]=5/3)
tupla2_2=([1]=21 [2]=12.3 [4]=21.3 [5]=$((2 * 4)) [6]=$[5/3])
echo "tupla2_1 = "${tupla2_1[*]}
echo "tupla2_2 = "${tupla2_2[*]}
# Multiple types in one tuple
tupla3=([1]=21 [2]="calombo" [3]=olaria [4]=21.3 [5]=2*4 [6]=5/3)
echo "tupla3 = "${tupla3[*]}

# Initialization without position, only values
tupla4=( 2 3 6 8 9 )
echo "tupla4 = "${tupla4[*]}
echo "tupla4[1] = "${tupla4[1]}
echo "tupla4[0] = "${tupla4[0]}
echo "#tupla4[*] = "${#tupla4[*]}
# Numeros Decimais
tupla4_1=( $((2 * 7)) $[3 * 4] $[4 / 3] $(bc -l <<< "100/3")  $(bc <<< "scale=3; 100/3"))
echo "tupla4_1 = "${tupla4_1[*]}

# Operations
# Integers
echo "Adding tuples = "$[${tupla4_1[1]} + ${tupla4_1[2]}]
let "z=2**8"
echo "Power Function: "$z
let z="2*8"
echo "Product Function: "$z
echo "5 * 2 = "$(expr 5 \* 2)
printf '%s\n' "hello $z"
# Floating-Point
echo "Adding tuples = "$(bc -l <<< "${tupla4_1[3]} + ${tupla4_1[4]}")
echo "Adding tuples = "$(echo "${tupla4_1[3]} + ${tupla4_1[4]}" | bc -l)
echo "Adding tuples = "$(echo "${tupla4_1[3]}^2 + ${tupla4_1[4]}" | bc -l)
awk "BEGIN {print 100/3}"
awk "BEGIN {printf \"%.2f\n\", 100/3}"
awk "BEGIN {print -8.4 - -8}"
#echo "Adding tuples = "$[${tupla4_1[3]} + ${tupla4_1[4]}]
#echo "Adding tuples = "$[${tupla4_1[3]} + ${tupla4_1[4]}]
