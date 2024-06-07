<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MAEJI IN THE HEUNGOP</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
   .carousel-item{
    height: 100vh;
    min-height: 300px;
    background: no-repeat center center scroll;
    -webkit-background-size: cover;
    background-size: cover;
 }
   .carousel-caption{
    bottom: 220px;   
 }
   .carousel-caption h5{
    font-size: 40px;
    text-transform: uppercase;
    letter-spacing: 2px;
    margin-top: 25px;
    font-family: merienda;  
 }
    .carousel-caption p{
    width: 60%;
    margin: auto;
    font-size: 25px;
    line-height: 1.9;
    font-family: poppins;   
 }
    .carousel-caption a{
    text-transform: uppercase;
    background: #262626;
    padding: 10px 30px;
    display: inline-block;
    color: #fff;
    margin-top:15px;   
 }
    .navbar-nav a{
    font-family: poppins;
    font-size: 30px;
    text-transform: uppercase;
    font-weight: bold;
    margin-right: 20px;
    margin-left: 30px;
    margin-top: 20px;
    margin-bottom: 20px;
 }
 
    .navbar-light .navbar-brand{
     font-color: #FFFDEAD;
     font-size: 40px;
     font-weight: bold;
     text-transform: uppercase;
     letter-spacing: 2px;   
 }
 
 .navbar-light .navbar-nav .active > .nav-link, .navbar-light .navbar-nav .nav-link.active,
 .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show > .nav-link {
     color: #fff;
 }
     .navbar-light .navbar-nav .nav-link{
     color: #ffdead;    
 }
     .navbar-nav{
      text-align: center;    
 }
     .nav-link{
      padding: .2rem 1rem;
 }
     .nav-light .navbar-nav .nav-link:focus, navbar-light .navbar-nav .nav-link:hover {
      color: fff !important;    
 }
      @media only screen and (max-width: 767px){
      .navbar-nav.ml-auto{
          background: rgba(0,0,0,0,5);
          }  
      .navbar-toggler{
          padding: 1px 5px;
          font-size: 18px;
          line-height: 0.3;
          background: #fff;
        }          
      }
      img.fixed{
      	  position: fixed;
      	  left: 20px;
      	  top: 20px;
      }
      
      .heading{
      	  text-align: center;
      	  margin-bottom: 30px;
      	  margin-top: 30px;
      	  font-size: 50px;
      	  padding: 1rem;
          border-radius: 0;
      }
      
      .footer .row{
           background-color: #505962;
           padding: 1rem;
           color: black;
          
      }
      .fa-donate{
      	   color: #edb662;
      }
      .fa-seedling{
      	   color: #25c114;
      }
      .fa-kiss-wink-heart{
           color: #ee5398;
      }
      .jumbotron{
           padding: 1rem;
           border-radius: 0;
      }
      
      }
      .col-md-5{
      	   margin-bottom:30px;
      	   margin-top:20px;
      }
      .col-md-pull-7{
      	   margin-bottom:30px;
      }
      #dining_bar{
      	   background:#eed9c8;
      }
      
      
</style>
</head>
<body data-spy="scroll" data-target="menu">
 <%  String user_id =null;
     if(session.getAttribute("user_id") != null){
    	user_id = (String) session.getAttribute("user_id");
      }
 %>
   <nav class="navbar navbar-dark bg-dark navbar-expand-md fixed-top">
   <div class="container-fluid">
   		<a class="navbar-brand"><img src="\eduTest01\img\image.png" width="300" height="100"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
             <span class="navbar-toggler-icon"></span>
        </button>	
		<div class="collapse navbar-collapse" id="menu">
              <ul class="navbar-nav ml-auto">
                   <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">ABOUT</a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="#intro">Intro</a>
                              <a class="dropdown-item" href="#accomodation">Accomodation</a>
                              <a class="dropdown-item" href="#dining_bar">Dining and Bar</a>
                              <a class="dropdown-item" href="#contact_us">Contact Us</a>
                        </div>
                  </li>
                  
                  <li class="nav-item">
                     <a class="nav-link" href="title_reservation.jsp">RESERVATION</a>
                  </li>
          
                  <%
                     if (user_id == null){
                  %>
                  <li class="nav-item">
                     <a class="nav-link" href="title_loginPage.jsp">LOGIN</a>
                  </li>
                                     
                  <%
                     }else if(!session.getAttribute("user_id").equals("admin")){
                  %>
                  <li class="nav-item">
                  	<a class="nav-link" href="action_logoutPage.jsp">LOGOUT</a>
                  </li>
                  <li class="nav-item">
                  	<a class="nav-link" href="title_myPage_Client.jsp">MYPAGE</a>
                  		<%=session.getAttribute("user_id") %>님 안녕하세요!
                  </li>
                  <%
                    }
                  %>
                  
  <!-- 관리자 상태의 네비게이션 -->
  <%
  if(session.getAttribute("user_id")!= null && session.getAttribute("user_id").equals("admin")){ 
  %>
  <li class="nav-item">
                  	<a class="nav-link" href="action_logoutPage.jsp">LOGOUT</a>
                  </li>
                  <li class="nav-item">
                  	<a class="nav-link" href="title_myPage_Admin.jsp">MANAGEMENT</a>
                  		<%=session.getAttribute("user_id") %>님 안녕하세요!
                  </li>
  <%
  }
 %>
            </ul>
       </div>
   </div>
   </nav>
   <!--Start (Carousel 관련 frontend) -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="7000">
                 <ol class="carousel-indicators">
                       <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                       <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                       <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                   <div class="carousel-item active">
                     <img src="https://www.traveldailymedia.com/assets/2018/11/07-a-lobby-lounge-1024x575.jpg" alt="first slide" width = "1450" height ="700" >
                     <div class="carousel-caption d-none d-md-block">
                        <h5></h5>
                        <p></p>
                     </div>
                   </div>
                   <div class="carousel-item">
                     <img src="https://yaimg.yanolja.com/v5/2018/09/11/20/1280/5b97a44a72f185.13013092.JPG" class="d-block w-100" alt="second slide" width = "1250" height = "700">
                     <div class="carousel-caption d-none d-md-block">
                        <h5></h5>
                        <p></p>
                     </div>
                   </div>
                   <div class="carousel-item">
                     <img src="https://s3.ap-northeast-2.amazonaws.com/stayfolio.images/system/pictures/images/000/027/599/display/74a7a9c331ab3fdc3331e14b4caac44bf8490128.JPG?1529387961" class="d-block w-100" alt="third slide" width = "900" height = "700">
                     <div class="carousel-caption d-none d-md-block">
                        <h5></h5>
                        <p></p>
                     </div>
                   </div>
               </div>
               <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span></span>
                  <span class="sr-only">Previous</span>
               </a>
               <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span></span>
                  <span class="sr-only">Next</span>
               </a>
       </div>
    <!--End (Carousel 관련 frontend) -->
<!-- Start Landing Page -->
<div class="landing">
	<div class="home-wrap">
		<div class="home-inner">
		</div>
	</div>
</div>
<!-- Start intro Section -->
<div id="intro">
<div class="jumbotron">

	<h3 class="heading">INTRO</h3>

<div class="row">

	<div class="col-md-4 text-center">
		<h4>Luxury</h4>
		<p>"치악산 자락에서 느낄 수 있는 알프스 산맥의 경치와 함께 최고의 서비스를 누려보세요."</p>
		<span class="fas fa-donate fa-10x"></span>
	</div>
	<div class="col-md-4 text-center">
		<h4>Eco-Friendly</h4>
		<p>"북유럽 최고급 친환경 원목을 사용한 가구를 통해 <br>노르웨이를 느껴봐요."</p>
		<span class="fas fa-seedling fa-10x"></span>
	</div>
	<div class="col-md-4 text-center">
		<h4>Love</h4>
		<p>"사랑하는 가족들과 친구, 그리고 연인과 함께 산속에서도 경험할 수 있는 하와이의 감성을 느껴보세요."</p>
		<span class="fas fa-kiss-wink-heart fa-10x"></span>
	</div>


</div>
</div>
</div>
<!-- End intro Section -->
<!-- Start Accomodation Section -->
<div id="accomodation">
	
	<h3 class="heading">Accomodation</h3>
		
<div class="row padding">

	<div class="col-md-6">
		<div class="card text-center">
			<img class="card-img-top" src="https://conradhotels3.hilton.com/resources/media/ch/SELCICI/en_US/img/shared/full_page_image_gallery/main/CN_execsuite02_20_700x525_FitToBoxSmallDimension_Center.jpg" width="250" height="300">
			<div class="card-body">
				<h4>굉장히 평범한 방</h4>
				<p>"친구들과 함께 오셨다면 그냥 평범한 방에서 술마시다 가세요."</p>
					<a href="info_normal.jsp" class="btn btn-primary">More INFO</a>
			</div>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="card text-center">
			<img class="card-img-top" src="https://pix10.agoda.net/hotelImages/1198373/-1/43cc893c81e31356ac2bb63b0395a849.jpg?s=1024x768" width="250" height="300">
			<div class="card-body">
				<h4>좀 뜨거워지는 방</h4>
				<p>"사랑하는 연인과 함께 달콤하고 뜨거운 추억을 선사해드립니다."</p>
					<a href="info_hot.jsp" class="btn btn-primary">More INFO</a>
			</div>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="card text-center">
			<img class="card-img-top" src="https://industry.ehl.edu/hubfs/HI_Blog%20Header%20Pictures/Hotel-design.jpg" width="250" height="300">
			<div class="card-body">
				<h4>부모님 효도하는 방</h4>
				<p>"엄마 아빠 제가 돈좀 썼어요."</p>
					<a href="info_family.jsp" class="btn btn-primary">More INFO</a>
			</div>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="card text-center">
			<img class="card-img-top" src="https://www.themulia.com/getmedia/8915ece0-15e6-4c08-a897-8626f0c3d4b8/TheSuites-Marquess-600x384.jpg?width=600&height=384&ext=.jpg" width="250" height="300">
			<div class="card-body">
				<h4>너무 비싼 방</h4>
				<p>"오늘 카드좀 긁을께"</p>
					<a href="info_luxury.jsp" class="btn btn-primary">More INFO</a>
			</div>
		</div>
	</div>
</div>	

</div>
<!-- End Accomodation Section -->
<!-- Start Dining & Bar Section -->
<div id="dining_bar">

	<h3 class="heading">Dining and bar</h3>
	
	<hr class="featurette-divider">
	
	<div class="row featurette">
		<div class="col-md-7">
			<h2 class="featurette-heading">"La Casa HEUNGOP". <span class="text-muted">지상 최고급의 음식을 맛볼거에요.</span></h2>
			<p class="lead">현재 고든램지가 총주방장으로 있는 La Casa HEUNGOP은 고객님들에게 미친요리를 선사해줍니다.</p>
				<table border="1">
					<th>Type</th>
					<th>Time</th>
					<tr>	
						<td>조식</td>
						<td>평일 : 07:00 ~ 10:00<br>
                                          주말 및 공휴일 : 07:00 ~ 11:00</td>
					</tr>
					<tr>	
						<td>중식 / 석식</td>
						<td>12:00 ~ 22:00</td>
					</tr>
					<tr>
						<td>차 / 커피 / 음료</td>
						<td>ALL DAY!!!</td>
					</tr>
				</table>
		</div>
		<div class="col-md-5">
			<img class="featurette-image img-responsive center-block" src="https://www.princehotels.com/tokyo/wp-content/uploads/sites/9/2019/06/tokyo-prince-hotel-dining-Shimizu_1-1.jpg" width="500" height="300">
		</div>
	</div>
	
	<hr class="featurette-divider">
	 
	<div class="row featurette">
		<div class="col-md-7 col-md-push-5">
			<h2 class="featurette-heading">"Alcohol Of MAEJI" <span class="text-muted">갈때까지 마셔봐요.</span></h2>
          	<p class="lead">Alcohol of MAEJI는 세계 정상급의 와인과 럼으로 고객님들을 보내드립니다.</p>
          	<table border="1">
					<th>EVENT</th>
					<th>TYPE</th>
					<th>TIME</th>
					<tr>
						<td rowspan="2">현재 covid-19로 인해 이벤트는 없습니다.</td>	
						<td>디오니소스 파티(프랑스산 와인만으로!!)</td>
						<td>12:00 ~ 03:00</td>
					</tr>
					<tr>
						<td>술독 파티 (국산주로만!!!)</td>
						<td>ALL NIGHT!!!</td>
					</tr>
			</table>
        </div>
	<div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="https://freight.cargo.site/t/original/i/59e3b53d4f174212cdcdf62c3a01f25b7fbf617770f981339b10f7542c4048e8/Ruby-Leni4193_1920px.jpg" width="500" height="300" >
	</div>
	</div>

</div>
<!-- End Dining & Bar Section -->
<!-- Start Contact Us -->
<div id="contact_us">
	
	<h3 class="heading">Contact Us</h3>
	<div id="map" style="width:100%;height:350px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fee146961a2915ff659984563b8be8c6"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    	mapOption = { 
        	center: new kakao.maps.LatLng(37.284466, 127.906790), // 지도의 중심좌표
        	level: 3 // 지도의 확대 레벨
    
    };
	 var map = new kakao.maps.Map(mapContainer, mapOption);
	 
	 var markerPosition = new kakao.maps.Lating(37.284466, 127.906790);
	 
	 var marker = new kakao.maps.Marker({
		 position: markerPosition
	 });
	 marker.setMap(map);
	 var iwContent = '<div style="padding:5px;">매지 IN THE 흥업 <br><a href="https://map.kakao.com/link/map/매지 IN THE 흥업,37.284055,127.906772" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/매지 IN THE 흥업,37.284055,127.906772" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	</script> 
</div>
<!-- End Contact Us -->
<!-- Start FOOTER -->
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
<!-- End Footer -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</body>
</html>