#!/bin/bash
filename=file_for_tests

echo "-----Запущен тест аргументов-----"

chmod +x script.sh
./script.sh fake_file output_file Word > /dev/null

if [[ $? -eq 1 ]]
then
    echo "Тест пройден :)"
else
    echo "Тест провален ###"
    echo "Аргументы: fake_file output_file Word"
    exit 1
fi

./script.sh $filename output_file > /dev/null

if [[ $? -eq 1 ]]
then
    echo "Тест пройден :)"
else
    echo "Тест провален ###"
    echo "Аргументы: fake_file output_file"
    exit 1
fi

./script.sh $filename output_file Test_word > /dev/null

if [[ $? -eq 1 ]]
then
    echo "Тест пройден :)"
    rm -rf output_file
else
    echo "Тест провален ###"
    echo "Аргументы: $filename output_file Test_word"
    exit 1
fi
