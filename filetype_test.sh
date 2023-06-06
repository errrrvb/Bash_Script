#!/bin/bash

echo "Тест 2: Проверка выбора операции с неправильным расширением файла"
output=$(bash script_txt.sh something.exe)
expected_output=""
if [[ "$output" == "$expected_output" ]]; then
    echo "Тест 2 пройден"
else
    echo "Тест 2 не пройден"
fi