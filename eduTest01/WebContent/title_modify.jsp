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
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title> 테스트 </title>
<style>
.bg-img{
		background: url('https://chopsticksandthecity.files.wordpress.com/2013/08/pen-hk-swimming-pool.jpg');
		height: 100vh;
		background-size: cover;
		background-position: center;
	}
	.bg-img:after{
		position: absolute;
		content: '';
		top: 0;
		left: 0;
		height: 100%;
		width: 100%;
		background: rgba(0,0,0,0.7);
	}
	.content{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		text-align: center;
		z-index: 999;
		width: 370px;
		text-align: center;
		padding: 60px 32px;
		background: red;
		background: rgba(255,255,255,0.04);
		box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
	}
	.content header{
		color: white;
		font-size: 40px;
		font-weight: 600;
		margin: 0 0 35px 0;
		font-family: 'Montserrat', sans-serif;
	}
	.field input{
		height: 100%;
		width: 100%;
		border: none;
		outline: none;
		color: #fff;
		font-size: 18px;
		font-family: 'Poppins', sans-serif;
		background-color: transparent;
		border-bottom: 1px solid #999;
		outline: none;
	}
	.content h2{
		color: #f8d2a4;
		font-size: 18px;
	}
</style>
</head>
<body>
	
	<%
	String user_id =request.getParameter("user_id");
	int room_no= Integer.parseInt(request.getParameter("room_no"));
	String checkIn_date = request.getParameter("checkIn_date"); 
	%>
	
	
	
	<!-- 바꿀 방유형 , 기간 입력받기 ( roomtype , ModifyCheckIn, ModifyCheckOut) -->
	
	
	<div class="bg-img">
			<div class="content">
				<header>예약 변경</header>
				<form method="get" action="action_modify.jsp">
					<h2>ROOM TYPE</h2>
					<div class="field">
						<input type="text" class="form-control" placeholder="1,2,3,4" name="room_type" maxlength="1">
					</div>
					<h2>CHECK-IN</h2>
					<div class="field">
						<input type="date" class="form-control" placeholder="2020-xx-xx" name="ModifyCheckIn" maxlength="10">
					</div>
					<h2>CHECK-OUT</h2>
					<div class="field">
						<input type="date" class="form-control" placeholder="2020-xx-xx" name="ModifyCheckOut" maxlength="10">
					</div>
					<input type="hidden" id="user_id" name="user_id" value="<%=user_id%>">
					<input type="hidden" id="room_no" name="room_no" value="<%=room_no%>">
					<input type="hidden" id="checkIn_date" name="checkIn_date" value="<%=checkIn_date%>" >
					<input type="submit" class="btn btn-primary form-control" value=변경>      
				</form>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>

</body>
</html>