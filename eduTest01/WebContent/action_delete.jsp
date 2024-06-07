<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 삭제페이지 </title>
</head>
<body>
	
	<%
	String user_id =request.getParameter("user_id");
	int room_no= Integer.parseInt(request.getParameter("room_no"));
	String checkIn_date = request.getParameter("checkIn_date");

	UserDAO userDAO= new UserDAO();
	userDAO.reservation_Cancel(user_id, checkIn_date, room_no);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('삭제되었습니다.');");
	script.println("location.href = 'mainPage.jsp'");
	script.println("</script>");
	%>
</body>
</html>