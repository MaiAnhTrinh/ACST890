#!/bin/bash

#Question 1

#a
egrep '&#x2713' foo.htlm
	#OR
sed -n 's/&#x2713/&/p' foo.htlm

#b
sed -n '50,100/th/th class="C"/p' foo.htlm > newfoo.htlm

#c
vim -d my_book_20180501.txt my_book_20180430.txt
	#OR
diff my_book_20180501.txt my_book_20180430.txt

#d
sed -n -e '100,200p' Novel.txt

#e
sed '100,200d' Novel.txt > Noveledited.txt
	#OR
vi +{100,200}d +wq Novel.txt

#Question 2
#!/bin/bash
#Making new directory
#Copy files into new directory
#Using sed to substitute the character in file name
mkdir -p ../../new
for i in $(sed -n '1,$p' current_list);
do
        cp $i $(echo $i | sed "s/.*/..\\/..\\/new\\/ACST890_s1_2018_&.txt/");
done
