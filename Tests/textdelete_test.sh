#!/bin/bash

echo "Тест 6: Проверка удаления файла"

echo -n > test.txt
echo "1" > test.txt

output=$(expect -c "
spawn bash script_txt.sh test.txt
expect \"Выберите операцию:\"
send \"3\n\"
expect \"Вы уверены, что хотите удалить файл? (y/n)\"
send \"y\n\"
expect \"Удаление файла успешно выполнено\"
")

expected_output="Удаление файла успешно выполнено"

if [[ "$output" == *"$expected_output"* ]]; then
    echo "Тест 6 пройден"
else
    echo "Тест 6 не пройден"
fi