#!/bin/bash

echo "Тест 4: Проверка изменения данных в файле"

echo -n > test.txt
echo "1" > test.txt

output=$(expect -c "
spawn bash script_txt.sh test.txt
expect \"Выберите операцию:\"
send \"2\n\"
expect \"Введите новые данные для замены старых:\"
send \"Новые тестовые данные\n\"
expect \"Введите номер строки, которую нужно заменить:\"
send \"1\n\"
expect eof
")

expected_output=""
if [[ "$output" == *"$expected_output"* ]]; then
    file_contents=$(cat test.txt)
    if [[ "$file_contents" == "Новые тестовые данные" ]]; then
        echo "Тест 4 пройден"
    else
        echo "Тест 4 не пройден"
    fi
else
    echo "Тест 4 не пройден"
fi