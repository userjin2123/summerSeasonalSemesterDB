<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="reservation" class="user.reservationDTO" scope="page" />
<jsp:setProperty name="reservation" property="user_id" />
<jsp:setProperty name="reservation" property="room_no" />
<jsp:setProperty name="reservation" property="checkIn_date" />
<jsp:setProperty name="reservation" property="checkOut_date" />
<jsp:setProperty name="reservation" property="room_type" />
<jsp:setProperty name="reservation" property="person_no" />
<jsp:useBean id="DayOK" class="user.DayOK" scope="page" />
<jsp:setProperty name="DayOK" property="checkIn_date" />
<jsp:setProperty name="DayOK" property="checkOut_date" />
<jsp:setProperty name="DayOK" property="room_no" />
<jsp:setProperty name="reservation" property="room_type" />
<jsp:setProperty name="reservation" property="person_no" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 테스트 </title>
</head>
<body>
	<%
	    String user_id = (String) session.getAttribute("user_id");
	
		if( 
			reservation.getCheckIn_date() == null ||
			reservation.getCheckOut_date() == null ){
		  
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다..');");
			script.println("history.back();");
			script.println("</script>");
		}
		else{
			//JSP DB 연동
			UserDAO userDAO = new UserDAO();
			//
			int room_type = Integer.parseInt(request.getParameter("room_type"));
			String checkIn_date = request.getParameter("checkIn_date");
			String checkOut_date = request.getParameter("checkOut_date");
			int person_no = Integer.parseInt(request.getParameter("person_no"));
			
			if(room_type == 1){
				
				int room_no = 101;
				for(int i=0; i <9 ; i++){
					
						int rs=userDAO.DayOK(checkIn_date,checkOut_date,room_no);
						//중복된 값 1 중복안됨 0
							if(rs==0){
								userDAO.reservation(user_id , room_no , checkIn_date , checkOut_date , room_type, person_no );
								i += 100;
								PrintWriter script= response.getWriter();
								script.println("<script>");
								script.println("alert('예약되었습니다.');");
								script.println("location.href = 'mainPage.jsp'");
								script.println("</script>");
							}
							else{
								room_no += 1;
							}
				 }	
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('이미 예약된 날짜입니다.');");
					script.println("history.back();");
					script.println("</script>");
				}
		
		if(room_type == 2){
			
			int room_no = 201;
			for(int i=0; i <9 ; i++){
				
					int rs=userDAO.DayOK(checkIn_date,checkOut_date,room_no);
					//중복된 값 1 중복안됨 0
						if(rs==0){
							userDAO.reservation(user_id , room_no , checkIn_date , checkOut_date , room_type, person_no);
							i += 100;
							PrintWriter script= response.getWriter();
							script.println("<script>");
							script.println("alert('예약되었습니다.');");
							script.println("location.href = 'mainPage.jsp'");
							script.println("</script>");
						}
						else{
							room_no += 1;
						}
			 }	
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 예약된 날짜입니다.');");
				script.println("history.back();");
				script.println("</script>");
			}
		if(room_type == 3){
			
			int room_no = 301;
			for(int i=0; i <9 ; i++){
				
					int rs=userDAO.DayOK(checkIn_date,checkOut_date,room_no);
					//중복된 값 1 중복안됨 0
						if(rs==0){
							userDAO.reservation(user_id , room_no , checkIn_date , checkOut_date, room_type, person_no );
							i += 100;
							PrintWriter script= response.getWriter();
							script.println("<script>");
							script.println("alert('예약되었습니다.');");
							script.println("location.href = 'mainPage.jsp'");
							script.println("</script>");
						}
						else{
							room_no += 1;
						}
			 }	
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 예약된 날짜입니다.');");
				script.println("history.back();");
				script.println("</script>");
			}
		if(room_type == 4){
			
			int room_no = 401;
			for(int i=0; i <9 ; i++){
				
					int rs=userDAO.DayOK(checkIn_date,checkOut_date,room_no);
					//중복된 값 1 중복안됨 0
						if(rs==0){
							userDAO.reservation(user_id , room_no , checkIn_date , checkOut_date, room_type, person_no );
							i += 100;
							PrintWriter script= response.getWriter();
							script.println("<script>");
							script.println("alert('예약되었습니다.');");
							script.println("location.href = 'mainPage.jsp'");
							script.println("</script>");
						}
						else{
							room_no += 1;
						}
			 }	
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 예약된 날짜입니다.');");
				script.println("history.back();");
				script.println("</script>");
			}
			
		}

	%>
</body>
</html>