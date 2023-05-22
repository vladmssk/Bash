#!/bin/bash
filename=file_for_tests

echo "-----Запущен тест скрипта-----"

chmod +x script.sh
./script.sh $filename output_file <<< Hi

if [[ `cat output_file` -eq 2 ]]
then
    echo "Тест пройден :)"
else
    echo "Тест провален ###"
    echo "Аргументы: $filename output_file <<< Hi"
    echo "Вывод: `cat output_file`"
fi
rm -rf output_file

./script.sh $filename output_file <<< TestWord

if [[ `cat output_file` -eq 0 ]]
then
    echo "Тест пройден :)"
else
    echo "Тест провален ###"
    echo "Аргументы: $filename output_file <<< TestWord"
    echo "Вывод: `cat output_file`"
fi
rm -rf output_file
