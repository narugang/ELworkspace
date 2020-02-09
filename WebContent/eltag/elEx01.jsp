<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="eltag.Customer, java.util.HashMap"  %>
<%
	Customer customer = new Customer();
	customer.setName("홍길동");
	customer.setEmail("narugang@hanmail.net");
	customer.setPhone("010-1111-1111");
	request.setAttribute("customer", customer);
	
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("name", "말리부");
	map.put("maker", "쉐보레");
	request.setAttribute("car", map);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Example</title>
</head>
<body>
<ul>
	<li>이름 : ${customer.name}</li>
	<li>메일 : ${customer.email}</li>
	<li>전화 : ${customer.phone}</li>
</ul>
<ul>
	<li>자동차 : ${car.name}</li>
	<li>제조사 : ${car.maker}</li>
</ul>
</body>
</html>