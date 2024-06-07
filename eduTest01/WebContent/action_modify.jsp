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
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	
	String user_id =request.getParameter("user_id");
	int room_no= Integer.parseInt(request.getParameter("room_no"));
	String checkIn_date = request.getParameter("checkIn_date");
	String ModifyCheckIn =request.getParameter("ModifyCheckIn");
	int room_type= Integer.parseInt(request.getParameter("room_type"));
	String ModifyCheckOut = request.getParameter("ModifyCheckOut");
	
	
	UserDAO userDAO= new UserDAO();
	if(room_type == 1){
		
		int room_no_ = 101;
		for(int i=0; i <9 ; i++){
				
				int rs=userDAO.DayOK(ModifyCheckIn ,ModifyCheckOut ,room_no_);
				System.out.println(rs);
				//중복된 값 1 중복안됨 0
			if(rs==0){
						userDAO.reservation_Modify(user_id, room_no, room_type, checkIn_date ,ModifyCheckIn ,ModifyCheckOut, room_no_);
						
						PrintWriter script= response.getWriter();
						script.println("<script>");
						script.println("alert('변경되었습니다.');");
						script.println("location.href = 'mainPage.jsp'");
						script.println("</script>");
						
						break;
					}
			else{
				room_no_ += 1;
				}
			
		}
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 예약된 날짜입니다.');");
		script.println("history.back();");
		script.println("</script>");
	}

if(room_type == 2){
		
		int room_no_ = 201;
		for(int i=0; i <9 ; i++){
				
				int rs=userDAO.DayOK(ModifyCheckIn ,ModifyCheckOut ,room_no_);
				
				//중복된 값 1 중복안됨 0
			if(rs==0){
						userDAO.reservation_Modify(user_id, room_no, room_type, checkIn_date ,ModifyCheckIn ,ModifyCheckOut, room_no_);
						
						PrintWriter script= response.getWriter();
						script.println("<script>");
						script.println("alert('예약되었습니다.');");
						script.println("location.href = 'mainPage.jsp'");
						script.println("</script>");
						
						break;
					}
			else{
				room_no_ += 1;
				}
			
		}
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 예약된 날짜입니다.');");
		script.println("history.back();");
		script.println("</script>");
	}
if(room_type == 3){
	
	int room_no_ = 301;
	for(int i=0; i <9 ; i++){
			
			int rs=userDAO.DayOK(ModifyCheckIn ,ModifyCheckOut ,room_no_);
			System.out.println(rs);
			//중복된 값 1 중복안됨 0
		if(rs==0){
					userDAO.reservation_Modify(user_id, room_no, room_type, checkIn_date ,ModifyCheckIn ,ModifyCheckOut, room_no_);
					
					PrintWriter script= response.getWriter();
					script.println("<script>");
					script.println("alert('예약되었습니다.');");
					script.println("location.href = 'mainPage.jsp'");
					script.println("</script>");
					
					break;
				}
		else{
			room_no_ += 1;
			}
		
	}
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미 예약된 날짜입니다.');");
	script.println("history.back();");
	script.println("</script>");
}
if(room_type == 4){
	
	int room_no_ = 401;
	for(int i=0; i <9 ; i++){
			
			int rs=userDAO.DayOK(ModifyCheckIn ,ModifyCheckOut ,room_no_);
			System.out.println(rs);
			//중복된 값 1 중복안됨 0
		if(rs==0){
					userDAO.reservation_Modify(user_id, room_no, room_type, checkIn_date ,ModifyCheckIn ,ModifyCheckOut, room_no_);
					
					PrintWriter script= response.getWriter();
					script.println("<script>");
					script.println("alert('예약되었습니다.');");
					script.println("location.href = 'mainPage.jsp'");
					script.println("</script>");
					
					break;
				}
		else{
			room_no_ += 1;
			}
		
	}
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미 예약된 날짜입니다.');");
	script.println("history.back();");
	script.println("</script>");
}
	
	

	
	
	
	%>
	
</body>
</html>