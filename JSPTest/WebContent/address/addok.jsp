<%@page import="com.test.jsp.DBUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//1. 데이터 가져오기
	//2. DB 작업(insert)
	//3. 완료 메시지
	
	//1.
	request.setCharacterEncoding("UTF-8");

	int result = 0;

	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");

	System.out.println(name);
	System.out.println(age);
	System.out.println(gender);
	System.out.println(tel);
	System.out.println(address);
	
	//2.
	Connection conn = null;
	PreparedStatement stat = null;
	
	try {
		
		DBUtil util = new DBUtil();
		conn = util.connect();
		
		System.out.println(conn.isClosed());
		
		String sql = "insert into tblAddress (seq, name, age, gender, tel, address, regdate) values (address_seq.nextval, ?, ?, ?, ?, ?, default)";
		
		stat = conn.prepareStatement(sql);

		stat.setString(1, name);
		stat.setString(2, age);
		stat.setString(3, gender);
		stat.setString(4, tel);
		stat.setString(5, address);
		
		result = stat.executeUpdate();
		
		
	} catch (Exception e) {
		System.out.println(e.toString());
	}
	
	
	if (result > 0) {
		response.sendRedirect("list.jsp");
	} else {
		out.println("<script>history.back();</script>");
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<link rel="stylesheet" href="/JSPTest/address/css/main.css">
<style>

</style>
<script>

	window.onload = function() {
		<%-- 
		<% if (result > 0) { %>
		alert("추가 완료!!");
		location.href = "list.jsp";
		<% } else { %>
		alert("추가 실패;;");
		history.back();
		<% } %>
		 --%>
	}
	
	
</script>
</head>
<body>
	<!-- addok.jsp -->
	<div class="main">
		<h1>주소록 <small>주소록 추가하기</small></h1>
		<div class="content">
			
			<% if (result > 0) { %>
			<div>추가 완료!!</div>
			<input type="button" value="목록으로" class="control"
					onclick="location.href='list.jsp';">
			<% } else { %>
			<div>추가 실패;;</div>
			<input type="button" value="돌아가기" class="control"
					onclick="history.back();">
			<% } %>
			
		</div>
	</div>
</body>
</html>










