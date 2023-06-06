#!/bin/bash

echo "Тест 2: Проверка выбора операции с неправильным расширением файла"
output=$(bash script_txt.sh something.exe)
expected_output="Неверный тип файла"
if [[ "$output" == "$expected_output" ]]; then
    echo "Тест 2 пройден"
    exit 0
else
    echo "Тест 2 не пройден"
    exit 1
fi