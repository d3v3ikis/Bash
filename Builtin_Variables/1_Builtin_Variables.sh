#!/bin/bas

echo "$$"

for n in {0..9}
do
	echo "BASH_VERSIONINFO[$n] = ${BASH_VERSINFO[$n]}"
done

echo "NEW PART"

ROOT_UID=0

echo -n "YOU ARE "

if [ "$UID" -eq "$ROOT_UID" ]
then
	echo "root. Your \$UID is $UID"
else
	echo "user: Your \$UID is $UID"
fi

