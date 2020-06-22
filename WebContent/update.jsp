<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>


<%
	//파라미터 추출
	int personId = Integer.parseInt(request.getParameter("personid"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//vo 만들기
	PersonVo personVo = new PersonVo(personId, name, hp, company);
	System.out.println(personVo.toString());
	
	//dao
	PhoneDao phoneDao = new PhoneDao();
	
	
	//personUpdate()
	phoneDao.personUpdate(personVo);
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
	
	
	
%>


<! DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
</body>
</html>