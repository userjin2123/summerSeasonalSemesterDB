<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
         <div class="col-lg-4"></div>
         <div class="col-lg-4">
             <div class="jumbotron" style="padding-top: 20px;">
                 <form method="post" action="action_makeAccount.jsp">
                    <h3 style="text-align: center;">MAKE ACCOUNT</h3>
                    <!-- 국문이름 -->
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="NAME(국문)" name="user_name" maxlength="20">
                    </div>
                    <!-- 영문이름 -->
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="NAME(영문)" name="user_ename" maxlength="20">
                    </div>
                    <!-- 생년월일 -->
                    <div class="form-group">
                        <input type="date" class="form-control" placeholder="BIRTHDAY" name="user_birthday" maxlength="20">
                    </div>
                    <!-- 아이디 -->
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="ID" name="user_id" maxlength="20" onkeydown="inputIdChk()">
                    </div>
                    <!-- 비밀번호 -->
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="PASSWORD" name="user_pw" maxlength="20">
                    </div>
                    <!-- 이메일 -->
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="E-MAIL" name="user_email" maxlength="20">
                    </div>
                    <!-- 성별 -->
                    <div class="form-group" style="text-align: center;">
                         <div class="btn-group" data-toggle="buttons">
                             <label class="btn btn-primary">
                                 <input type="radio" name="user_gender" autocomplete="off" value="여자" checked>여자
                             </label>
                              <label class="btn btn-primary active">
                                 <input type="radio" name="user_gender" autocomplete="off" value="남자" checked>남자
                             </label>
                         </div>
                    </div>
                    <!-- 전화번호 -->
                      <div class="form-group">
                        <input type="tel" class="form-control" placeholder="PHONE NUMBER" name="user_mobile" maxlength="20">
                     </div>
                    <!-- 주소 -->
                      <div class="form-group">
                        <input type="text" class="form-control" placeholder="ADDRESS" name="user_addr" maxlength="50">
                      </div>
                    <input type="submit" class="btn bte-primary form-control" value="회원가입">
                                            
                 </form>
              </div>
         </div>
         <div class="col-lg-4"></div>
     </div>
     <script src="https//code.jquery.com/jquery-3.1.1.min.js"></script>
     <script src="js/bootstrap.js"></script>

</body>
</html>