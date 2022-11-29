#! /bin/bash

echo -n "Enter the word which you want to replace: "
read word

if grep -w $word words.txt > /dev/null 2>&1
then
    true
else
   echo "No such word is present in the file, please try again"
   exit 1
fi

echo -n "Enter the new word: "
read newword

echo "-------------------------------"
echo "Content of file before replace"
cat words.txt
sed -i "s/$word/$newword/g" words.txt
echo "-------------------------------"
echo "Content of file after replace"
cat words.txt
