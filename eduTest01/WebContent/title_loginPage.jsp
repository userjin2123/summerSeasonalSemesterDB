<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<!-- css 속성 -->
<style>
	.bg-img{
		background: url('https://d1xyolhen8fnqh.cloudfront.net/media/hotels/slideshow_images_staged/large/1085542.jpg');
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
		font-size: 33px;
		font-weight: 600;
		margin: 0 0 35px 0;
		font-family: 'Montserrat', sans-serif;
	}
	.field{
		position: relative;
		height: 45px;
		width: 100%;
		display: flex;
		background: rgba(255,255,255,0,94);
	}
	.field span{
		color: #3a5311;
		width: 40px;
		line-height: 45px;
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
</style>
</head>
<body>
<div class= "bg-img">
        <!-- 로그인폼 -->
		<div class= "content">
			<header>LOGIN</header>
			<form method= "post" action="action_loginPage.jsp">
				<!-- 아이디 입력창 -->
				<div class= "field">
					<span class="fa fa-user"></span>
					<input type= "text" placeholder= "User name" name="user_id" maxlength="20">
				</div>
				<!-- 비밀번호 입력창 -->
				<div class= "field">
					<span class="fa fa-lock"></span>
					<input type= "password" placeholder= "Password" name="user_pw" maxlength="20">
				</div>
				<!-- 로그인 실행 -->
				<div class= "field space">
					<input type= "submit" value= "LOGIN">
				</div>
			</form>
			<!-- 회원가입 페이지 실행 -->
			<form>
				<div class="signup">Don't have account?
					<a href="title_makeAccount.jsp">Signup Now</a>
				</div>
			</form>
		</div>
</div>
</body>
</html>