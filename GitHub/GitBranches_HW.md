1. На локальном репозитории сделать ветки для:  
- Postman  
- Jmeter  
- CheckLists  
- Bug Reports  
- SQL  
- Charles  
- Mobile testing  
==========================================================================  
	`git checkout -b Postman (команда создает новую ветку с именем Postman и сразу переходит в нее)`  
	`git checkout - (команда возвращает к предыдущей ветке)`  
	`git branch Jmeter (команда создает ветку с именем Jmeter)`  
	
2. Запушить все ветки на внешний репозиторий  
==========================================================================  
	`git push -u origin brunchName`

3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта  
==========================================================================  
	`cat > test.md `

4. Запушить структуру багрепорта на внешний репозиторий  
==========================================================================  
	`git add test.md && commit -m "Add test"`  

5. Вмержить ветку Bag Reports в Main  
==========================================================================  
	`git merge BugReports (нужно находиться в ветке main)`  

6. Запушить main на внешний репозиторий.  
==========================================================================  
	`git push`  

7. В ветке CheckLists набросать структуру чек листа.  
==========================================================================  
	`cat > list.md  (создаем и редактируем файл)`  
	
8. Запушить структуру на внешний репозиторий  
==========================================================================  
	`git add list.md && commit -m "Add List"`  
	
9. На внешнем репозитории сделать Pull Request ветки CheckLists в main  
==========================================================================  
	`На веб интерфейсе нажимаем зеоеную кнопку Pull Reqest, проверяем из какой
	ветки в какую мы мерждим. В нижней части страницы в выпадающем списке выбираем
	merge pull reqest, затем confirm merge`
	
10. Синхронизировать Внешнюю и Локальную ветки Main  
==========================================================================  
	`git pull  (находиться в ветке main)`