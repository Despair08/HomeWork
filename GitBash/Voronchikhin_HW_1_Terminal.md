# HW\_1Terminal

`	`1. Посмотреть, где я. //**pwd**

`	`2. Создать папку //**mkdir (Group\_27)**

`	`3. Зайти в папку //**cd Group\_27**

`	`4. Создать 3 папки //**mkdir le\_1 le\_2 le\_3**

`	`5. Зайти в любую папку //**cd le\_1**

`	`6. Создать 5 файлов (3 .txt, 2 .json) //**touch t1.txt t2.txt t3.txt j1.json j2.json**

`	`7. Создать 3 папки //**cd .. => cd le\_2 => mkdir pg1 pg2 pg3**  

`	`8. Посмотреть содержимое любой папки// **ls -la**  

`	`9. Открыть любой файл txt // **cd .. => cd le\_1 => vim t1.txt**  

`	`10. Написать что-нибудь // **vim t1.txt => 'i'(insert) => 'пишем текст' => esc => :wq**  

`	`11. Сохранить и выйти // **:wq**  

`	`12. Выйти из папки на уровень выше // **cd .. (два уровня cd../..)**  

`	`13. Перерместить любые 2 файла в любую другую папку// **mv t2.txt t3.txt ../le\_2 (т2 и т3 перемещаются из ле1 в ле2)**  

`	`14. Скопировать любые 2 файла в любую другую папку// **cp t2.txt t3.txt ../le\_3**  

`	`15. Найти файл по имени// **find . -iname 'j2\*'**  

`	`16. Посмотреть содержимое в реальном времени //**tail -f t2.txt (При добавлении строк в файловом редакторе они выводятся так же в терминале)**  

`	`17. Вывести несколько первых строк из текстового файла// **head t1.txt (Выводит первые 10 строк (head -'число строк'**  

`	`**t1.txt выводит заданное количество строк с начала документа))**  

`	`18. Вывести несколько последних строк из текстового файла// **tail t1.txt (Выводит последние 10 строк (tail -'число строк'**  

`	`**t1.txt выводит заданное количество строк с конца документа))**  

`	`19. Посмотреть содержимое длинного файла// **less t1.txt (Позволяет просматривать длинный файл, листать его стрелкой вверх/вниз.**  

`	`**Для выхода нажать q)**  

`	`20. Вывести дату и время// **date (Wed Feb  9 22:48:50 RTZ 2022)**  


# Задание \*  
---
1) Отправить http запрос на сервер.  
http://162.55.220.72:5005/terminal-hw-request //**curl http://162.55.220.72:5005/terminal-hw-request**  

## Response is:  
```  
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   237  100   237    0     0   1527      0 --:--:-- --:--:-- --:--:--  1538{"Intro":"Hello!! This is your the first response from server","Tasks":{"Task_1":"Send the next URL in terminal: http://162.55.220.72:5005/get_method?name=(set_your_String)&age=(set_your_number)","result":["Your_String","Your_number"]}}  
```  
## Second request:  
**curl "http://162.55.220.72:5005/get_method?name=Dan&age=30"**  
```  
 % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    25  100    25    0     0    127      0 --:--:-- --:--:-- --:--:--   127["Dan","30"]  
```

## Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13  
```  
\#!/bin/bash
  
cd /d/QA/Group27/TestScript Зайти в папку  

mkdir Folder1 Folder2 Folder3 Создать 3 папки  

cd Folder1 Зайти в любую папку  

touch text1.txt text2.txt text3.txt json1.json json2.json Создать з текстовых и 2 джсон файла  

mkdir Papka1 Papka2 Papka3  Создать 3 папки  

echo "Содержимое папки" Вывести список содержимого папки  

ls -la Переместить 2 файла из одной папки в другую  

cd .. mv Folder1/{text1.txt,text2.txt} Folder2  

```  
