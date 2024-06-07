<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Insert title here</title>
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
	.space{
		margin-top: 16px;
	}
	.pass:hover a{
		text-decoration: underline;
	}
	input[type="submit"]{
		background:#3498db;
		border: 1px solid #2691d9;
		color: white;
		font-size: 18px;
		letter-spacing: 1px;
		font-weight: 600;
		cursor: pointer;
		font-family: 'Montserrat',sans-serif;
		border-radius: 25px;
	}
	.signup{
		color: white;
		font-size: 25px;
		font-family: 'Poppins', sans-serif;
	}
	.signup a{
		color: #3498db;
		text-decoration: none;
	}
	.signup a:hover{
		text-decoration: underline;
	}
	.field h2{
		color: white;
	}
	.content h2{
		color: #f8d2a4;
		font-size: 18px;
	}
</style>
</head>
<body>
<%  String user_id =null;
     if(session.getAttribute("user_id") != null){
    	user_id = (String) session.getAttribute("user_id");
      }
     else
     {  PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요 고객님!')");
		script.println("location.href = 'title_loginPage.jsp'");
		script.println("</script>");
     }
 %>

	<div class="bg-img">
			<div class="content">
				<header>RESERVATION</header>
				<form method="post" action="action_reservation.jsp">
					      <!-- 체크인 날짜 선택 -->
							<h2>CHECK-IN DATE</h2>
					<div class="field">
						<input type="date" class="form-control" placeholder="2020-xx-xx" name="checkIn_date" maxlength="10">
					</div>
						  <!-- 체크아웃 날짜 선택 -->
							<h2>CHECK-OUT DATE</h2>
					<div class="field">
						<input type="date" class="form-control" placeholder="2020-xx-xx" name="checkOut_date" maxlength="10">
					</div>
					      <!-- 아이디 입력-->
					<!--  <div class="field">
							<h2>ID</h2>
						<input type="text" class="form-control" placeholder="아이디 (20자이하)" name="user_id" maxlength="20">
					</div>-->
					       <!-- 객실유형-->
							<h2>ROOM TYPE</h2>
					<select name="room_type">
						<option value="" selected>---선택---</option>
						<option value="1" selected>---굉장히 평범한 방---</option>
						<option value="2" selected>---좀 뜨거워지는 방---</option>
						<option value="3" selected>---부모님 효도하는 방---</option>
						<option value="4" selected>---너무 비싼방---</option>
					</select>
							<h2>인원 수</h2>
					<select name="person_no">
						<option value="" selected>---선택---</option>
						<option value="1" selected>---1---</option>
						<option value="2" selected>---2---</option>
						<option value="3" selected>---3---</option>
						<option value="4" selected>---4---</option>
					</select>
							
							
				<div class= "field space">
					<input type="submit" class="btn btn-primary form-control" value=예약하기>
				</div>
				</form>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
