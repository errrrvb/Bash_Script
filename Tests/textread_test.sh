#!/bin/bash

echo "Тест 5: Проверка чтения данных в файле"

echo -n > test.txt
echo "1" > test.txt

output=$(expect -c "
spawn bash script_txt.sh test.txt
expect \"Выберите операцию:\"
send \"4\n\"
expect \"Содержимое файла:\"
expect \"1\"
")

expected_output="1"

if [[ "$output" == *"$expected_output"* ]]; then
    echo "Тест 5 пройден"
else
    echo "Тест 5 не пройден"
fi