<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>

	.bg-img{
		background: url('https://newsimg.hankookilbo.com/2020/06/05/202006051401051102_11.jpg');
		width: 1400px;
		height: 615px;
		background-size: cover;
	}
	.container header{
		font-size: 33px;
		font-family: 'Montserrat', sans-serif;
		
		margin-bottom: 30px;
	}
	
</style>
</head>
<body>
<!--jquery edit , delete 함수 구현  -->
<script>
	function edit(num){
		var id = document.getElementById("user_id_"+num).value;
		var No = document.getElementById("room_no_"+num).value;
		var CheckIn = document.getElementById("checkIn_date_"+num).value;
		//$.post("ModifyAction.jsp", {userID:id}, {roomNo:No}, {CheckIn_date:CheckIn});
		location.href = "title_modify.jsp?user_id="+id+"&room_no="+No+"&checkIn_date="+CheckIn;
		
	}
	function delete2(num){
		var id = document.getElementById("user_id_"+num).value;
		var No = document.getElementById("room_no_"+num).value;
		var CheckIn = document.getElementById("checkIn_date_"+num).value;
		//$.post("DeleteAction.jsp", {userID:id}, {roomNo:No}, {CheckIn_date:CheckIn})
		location.href = "action_delete.jsp?user_id="+id+"&room_no="+No+"&checkIn_date="+CheckIn;
		}
</script>
<div class="bg-img">
<center>
	<div class="container">
	<header>예약 조회</header>
		<div class="row">
			<div class="col-md-12">
				<div class="table-responsive">
				
				<table class="table table-striped table-bordered table-hover">
					<tr class="table-info" >
						<td>예약자 ID</td>
						<td>방호수</td>
						<td>체크인</td>
						<td>체크아웃</td>
						<td>방유형</td>
						<td>인원 수 </td>
						<td>금액</td>
						<td>관리</td>
					</tr>
					<% String user_id =(String)session.getAttribute("user_id");
					   UserDAO userDAO = new UserDAO();
				       ArrayList<reservationDTO> arrayList = userDAO.getTitle_myPage_Client(user_id);
				
				       for(int i =0; i< arrayList.size(); i++){
					      reservationDTO dto = arrayList.get(i);
					%>
					<tr>
						<td><input id="user_id_<%=i%>" type="hidden" value="<%=dto.getUser_id() %>"><%=dto.getUser_id() %></td>
						<td><input id="room_no_<%=i%>" type="hidden" value="<%=dto.getRoom_no() %>"><%=dto.getRoom_no() %></td>
						<td><input id="checkIn_date_<%=i%>" type="hidden" value="<%=dto.getCheckIn_date() %>"><%=dto.getCheckIn_date() %></td>
						
						<td><%=dto.getCheckOut_date() %></td>
						<td><%=dto.getRoom_type() %></td>
						<td><%=dto.getPerson_no() %></td>
						
						<% if(dto.getRoom_type()==1){
						int t = 750000;%>
						<td width="200" align="center"><font size="3"><%=dto.getPerson_no()*t %>원</font></td>
						<% } %>
						<% if(dto.getRoom_type()==2){
						int t = 980000;%>
						<td width="200" align="center"><font size="3"><%=dto.getPerson_no()*t %>원</font></td>
						<% } %>
						<% if(dto.getRoom_type()==3){
						int t = 1100000;%>
						<td width="200" align="center"><font size="3"><%=dto.getPerson_no()*t %>원</font></td>
						<% } %>
						<% if(dto.getRoom_type()==4){
						int t = 2000000;%>
						<td width="200" align="center"><font size="3"><%=dto.getPerson_no()*t %>원</font></td>
						<% } %>
						<td><input type=button onclick="edit(<%=i%>);">수정&nbsp;
						&nbsp;<input type=button onclick="delete2(<%=i%>);">삭제</font></td></td>
					</tr>
					<%
					}
					%>
					
					
				</table>
		
				</div>
			</div>
		</div>
		<a href="mainPage.jsp" class="btn btn-primary">메인페이지로 돌아가기</a>
</div>
</center>
</div>
<div class="container-fluid footer">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 text-center">
			<img src="\eduTest01\img\image.png" width= "300" height="100">
			<p>At our core is a collection of design and development solutions that
			represent everything your business needs to compete in the modern
			marketplace/</p>
			<strong>COPYRIGHT &copy; 2020 MAEJI IN THE HEUNGOP</strong><br>
			<p>(주)매지인더호텔 공동 대표 이현탁 | 정영진 | 윤성현</p>
			<p>통신판매업신고번호 2011-강원도원주-03423 | 등록번호 203-12-12934</p>
			<strong>Contact Info</strong>
			<p>(033)760-2683<br>leeht620@gmail.com.
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</body>
</html>