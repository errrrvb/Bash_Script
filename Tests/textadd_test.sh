#!/bin/bash

echo "Тест 3: Проверка добавления данных в файл"
echo -n > test.txt
echo "Тестовые данные" > test.txt

# Используем утилиту expect для автоматизации ввода команд
output=$(expect -c "
spawn bash script_txt.sh test.txt
expect \"Выберите операцию:\"
send \"1\n\"
expect \"Введите данные для добавления:\"
send \"test data\n\"
expect eof
")

expected_output=""
if [[ "$output" == *"$expected_output"* ]]; then
    file_contents=$(cat test.txt)
    if [[ "$file_contents" == "Тестовые данные"$'\n'"test data" ]]; then
        echo "Тест 3 пройден"
    else
        echo "Тест 3 не пройден"
    fi
else
    echo "Тест 3 не пройден"
fi