<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title> 전체예약리스트 </title>
</head>
<body>
<!--jquery edit , delete 함수 구현  -->
<script>
	function edit(num){
		var id = document.getElementById("user_id"+num).value;
		var No = document.getElementById("room_no"+num).value;
		var CheckIn = document.getElementById("checkIn_date"+num).value;
		//$.post("ModifyAction.jsp", {userID:id}, {roomNo:No}, {CheckIn_date:CheckIn});
		location.href = "title_modify.jsp?user_id="+id+"&room_no="+No+"&checkIn_date="+CheckIn;
		
	}
	function delete2(num){
		var id = document.getElementById("user_id"+num).value;
		var No = document.getElementById("room_no"+num).value;
		var CheckIn = document.getElementById("checkIn_date"+num).value;
		//$.post("DeleteAction.jsp", {userID:id}, {roomNo:No}, {CheckIn_date:CheckIn})
		location.href = "action_delete.jsp?user_id="+id+"&room_no="+No+"&checkIn_date="+CheckIn;
		}
</script>

	<center>
		<table width="1400" BORDER="1">
				<tr height="100">
					<td colspan="7" align="center">
						<font size="6">전체 예약 현황</font>
					</td>
				</tr>
				<tr HEIGHT="100">
				<td width="200" align="center"><font size="3">예약자ID</font></td>
				<td width="200" align="center"><font size="3">방호수</font></td>
				<td width="200" align="center"><font size="3">체크인</font></td>
				<td width="200" align="center"><font size="3">체크아웃</font></td>
				<td width="200" align="center"><font size="3">방유형</font></td>
				<td width="200" align="center"><font size="3">인원수</font></td>
				<td width="200" align="center"><font size="3">관리</font></td>
			</tr>
			<% String user_id =(String)session.getAttribute("user_id");
					   UserDAO userDAO = new UserDAO();
				       ArrayList<reservationDTO> arrayList = userDAO.getTitle_myPage_Admin();
				
				       for(int i =0; i< arrayList.size(); i++){
					      reservationDTO dto = arrayList.get(i);
					%>
	
			
			<tr HEIGHT="100">
				<td width="200" align="center"><font size="3"><input id="user_id<%=i%>" type="hidden" value="<%=dto.getUser_id() %>"><%=dto.getUser_id() %></font></td>
				<td width="200" align="center"><font size="3"><input id="room_no<%=i%>" type="hidden" value="<%=dto.getRoom_no() %>"><%=dto.getRoom_no() %></td>
				<td width="200" align="center"><font size="3"><input id="checkIn_date<%=i%>" type="hidden" value="<%=dto.getCheckIn_date() %>"><%=dto.getCheckIn_date() %></font></td>
				<td width="200" align="center"><font size="3"><%=dto.getCheckOut_date() %></font></td>
				<td width="200" align="center"><font size="3"><%=dto.getRoom_type() %></font></td>
				<td width="200" align="center"><font size="3"><%=dto.getPerson_no() %></font></td>
				<td width="200" align="center"><font size="3"><input type=button  onclick="edit(<%=i%>);">수정&nbsp;
				&nbsp;<input type=button  onclick="delete2(<%=i%>);">삭제</font></td>
			</tr>
		<%
		}
		%>
		
			</table>
		</center>
		<!-- 이부분 WebContent에 jquery.min.js 있어야합니다. -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</body>
</html>