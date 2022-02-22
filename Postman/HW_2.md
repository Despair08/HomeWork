# Postman HW_2  
## Первое
	1. Отправить запрос (http://162.55.220.72:5005/first).  
	2. Статус код 200  
	3. Проверить, что в body приходит правильный string.  
```  
pm.test("Status code is 200", function () {  
pm.response.to.have.status(200);  
});  
```  
## Второе
	1. Отправить запрос (http://162.55.220.72:5005/user_info_3).  
	2. Статус код 200  
```  
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```  
	3. Спарсить response body в json.  
```  
let jsonData = pm.responce.json();  //(jsonData - название переменной; pm.responce - парсинг джсон)  
```  
	4. Проверить, что name в ответе равно name s request (name вбить руками.)  
```  
		pm.test("Check name", function() {  
			let jsonData = pm.response.json();  
			pm.expect(jsonData.name).to.eql("Dan")  
		});
```  
	5. Проверить, что age в ответе равно age s request (age вбить руками.)  
```  
		pm.test("Check age", function() {  
			let jsonData = pm.response.json();  
			pm.expect(jsonData.age).to.eql(30)  
		});  
```  
	6. Проверить, что salary в ответе равно salary s request (salary вбить руками.)  
	7. Спарсить request.  
	8. Проверить, что name в ответе равно name s request (name забрать из request.)  
	9. Проверить, что age в ответе равно age s request (age забрать из request.)  
	10. Проверить, что salary в ответе равно salary s request (salary забрать из request.)  
	11. Вывести в консоль параметр family из response.  
	12. Проверить что u_salary_1_5_year в ответе равно salary*4 (salary забрать из request)  
```  

```  


	
