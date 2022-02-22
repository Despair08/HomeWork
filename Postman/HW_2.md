# Postman HW_2  
	1. Отправить запрос (http://162.55.220.72:5005/first).  
	2. Статус код 200  
	3. Проверить, что в body приходит правильный string.  
```  
pm.test("Status code is 200", function () {  
pm.response.to.have.status(200);  
});  
```

	
