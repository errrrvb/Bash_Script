#!/bin/bash

echo "Тест 1: Проверка выбора операции без указания файла"
output=$(bash script_txt.sh)
expected_output="Не был выбран файл"
if [[ "$output" == "$expected_output" ]]; then
    echo "Тест 1 пройден"
    exit 0
else
    echo "Тест 1 не пройден"
    exit 1
fi