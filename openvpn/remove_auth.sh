for file in $(find . -name "*.ovpn" -type f);
do
	cat $file | sed '/auth-user-pass/d' > $file 
	echo "Processed $file"
done
