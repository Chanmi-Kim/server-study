<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Calendar" %>
<html>
<head><title>현재 시간</title></head>
<body>
<%
    Calendar cal = Calendar.getInstance();
%>
오늘은
    <%= cal.get(Calendar.YEAR) %>년
    <%= cal.get(Calendar.MONTH) + 1 %>월
    <%= cal.get(Calendar.DATE) %>일
입니다.
</body>
</html>