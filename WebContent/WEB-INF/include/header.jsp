<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="favicon" href="${pageContext.request.contextPath}/images/favicon.ico">
<title>차홍아르더</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" type="text/css">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>
@media screen and (min-width:1200px){

header #menuBtn{
	display: none;
}
header{
	width: 60%;
	height: 155px;
	margin:0 auto;
	margin-top: 20px;
	position: relative;
}
header #title{
	text-align: center;
	clear: both;
}
header #title img{
	 height: 90px; 
}
header #topmenu ul a{
	color: black;
}
header #topmenu ul li{
	width: 16.6%;
	height: 60px;
	line-height: 60px;
	text-decoration: none;
	text-align: center;
	float: left;
	display: inline-block;
}
header #topmenu li:hover{
	text-decoration: underline;
}
header #topmenu li#mgnMenu{
	background-color: #aaa;
}
header #topmenuMgn{
}
header #topmenuMgn ul a{
	color: black;
	font-weight: bold;
}
header #topmenuMgn ul li{
	width: 20%;
	height: 60px;
	line-height: 60px;
	text-decoration: none;
	text-align: center;
	color: white;
	background-color: #aaa;
}
header #topmenuMgn li:hover{
	background-color: black; 
}
header #Idcheck{
	min-width:15%;
	height:30px;
	position: absolute;
	display: inline;
	top:0;
	right:0px;
	text-align: right;
	font-size: 13px;
}
header #Idcheck a:hover{
	font-size: 14px;
}
header #Idcheck a{
	line-height: 30px;
	text-decoration: none;
	color: black;
}
header .mymenu{
	width: 120px;
	height: 40px;
	background-color: gray;
	position: absolute;
	display: inline;
	top:30px;
	right:10px;
	text-align: center;
}
header .mymenu a{
	text-decoration: none;
	color: white;
	font-weight: bold;
	line-height: 40px;
}
header div#chat textarea{
	background-color: rgba(0,0,0,0.5);
	color: white;
}
header div#chat{
	position: fixed;
	right:-5px;
	top:200px;
	padding:0;
	z-index: 100;
}
header button#chatShow{
	position: fixed;
	right:0;
	top:180px;
	border-radius:5px;
	background: rgba(255,255,255,0.5);
}
header #submenu{
}
header #submenu li{

}
header #loginMenu{
	text-align: right;
}
header #timer{
	position: relative; 
	top: 0px;
	right :0px;
	width: 240px; 
	height: 20px; 

	visibility: hidden;
	color: black; 
	font-family: tahoma; 
	font-size: 20px !important;
	font-weight: bold; 
	text-align: center;
	display: inline;

}
}

@media all and (max-width:1199px){

header{
	width: 90%;
/* 	height: 155px; */
	margin:0 auto;
	margin-top: 20px;
	position: relative;
}
header #title{
	text-align: center;
	margin-left: 40px;
}
header #title img{
	width: 100%;
}
header #topmenu ul a{
	color: black;
}
header #topmenu ul li{
 	width: 100%;
	height: 50px;
	line-height: 50px;
	text-decoration: none;
	text-align: center;
	float: left;
	display: inline-block;
	font-size: 25px;
}
header #topmenu li:hover{
	text-decoration: underline;
}
header #topmenuMgn ul a{
	color: black;
	font-weight: bold;
}

header #topmenuMgn ul li{
	width: 100%;
	height: 50px;
	line-height: 50px;
	
	text-decoration: none;
	text-align: center;
	float: left;
	display: inline-block; 
	background-color: #aaa;
	font-size: 25px;
}

header #Idcheck{
	width:100%;
	height: 30px;
	line-height: 30px;
	text-align: center;
}
header #Idcheck span{
	width:47%;
	height: 30px;
	display: inline-block;
}
header #Idcheck a:hover{
	font-size: 18px;
}
header #Idcheck a{
	line-height: 30px;
	text-decoration: none;
	color: black;
	font-size: 18px;
}
header .mymenu{
	width: 90%;
	height: 45px;
	background-color: gray;
	
	position: absolute;
	display: inline;
	top:-2px;
	left:50px;
	text-align: center;
}
header .mymenu a{
	text-decoration: none;
	color: white;
	font-weight: bold;
	line-height: 45px;
	font-size: 25px;
}
header div#chat textarea{
	background-color: rgba(0,0,0,0.5);
	color: white;
}
header div#chat{
	position: fixed;
	right:-5px;
	top:200px;
	padding:0;
	z-index: 100;
}
header button#chatShow{
	position: fixed;
	right:0;
	top:180px;
	border-radius:5px;
	background: rgba(255,255,255,0.5);
}
header #chat{
	display: none;
}
header #chatShow{
	display: none;
}
header #warpFmobile #menuBtn{
	position: absolute;
	top: 0px;
	left: 0px;
	width: 50px;
}
header #warpFmobile #menuBtn img{
	width: 100%;
}
header #menuBtnSlide{
	display: none;
}
header #loginMenu{
	text-align: center;
}
header #timer{
	position: relative; 
	top: 0px;
	right :0px;
	width: 240px; 
	height: 20px; 

	visibility: hidden;
	color: black; 
	font-family: tahoma; 
	font-size: 20px !important;
	font-weight: bold; 
	text-align: center;
	display: inline;

}

}



</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>


Lpad=function(str, len){ 
	str = str + ""; 
	while(str.length < len){ 
		str = "0"+str; 
	}
	return str; 
} 

// 사용자로부터 마우스 또는 키보드 이벤트가 없을경우의 자동로그아웃까지의 대기시간, 분단위 
var iMinute = 1;
 
//자동로그아웃 처리 몇초전에 경고를 보여줄지 설정하는 부분, 초단위 
var noticeSecond = 59; 

var iSecond = iMinute * 60;
var timerchecker = null; 
 
initTimer=function(){
	//사용자부터 마우스 또는 키보드 이벤트가 발생했을경우 자동로그아웃까지의 대기시간을 다시 초기화 
	if(window.event){ 
		iSecond = iMinute * 60 ;
		clearTimeout(timerchecker); 
		coverFilmMain.style.visibility='hidden'; // 입력방지 레이어 해제 
		timer.style.visibility='hidden';  // 자동로그아웃 경고레이어 해제 
	}
	rMinute = parseInt(iSecond / 60); 
	rSecond = iSecond % 60;
   
	if(iSecond > 0){//지정한 시간동안 마우스, 키보드 이벤트가 발생되지 않았을 경우 
		if(iSecond < noticeSecond){
			coverFilmMain.style.visibility='visible';	/// 입력방지 레이어 활성 
			timer.style.visibility='visible';	// 자동로그아웃 경고레이어 활성 
		} 
        //자동로그아웃 경고레이어에 경고문+남은 시간 보여주는 부분 
		timer.innerHTML = "<font family=tahoma style='font-size:16;'>AUTO LOG OUT</font></h1> <font color=red>" + Lpad(rMinute, 2)+":"+Lpad(rSecond, 2);
		
		if( ${Auth.uId}!=null ){
			iSecond--;
			timerchecker = setTimeout("initTimer()", 1000); // 1초 간격으로 체크 			
			console.log(iSecond);
		}
	}else{
		clearTimeout(timerchecker);
		location.href = "${pageContext.request.contextPath}/login/logout.do"; // 로그아웃 처리 페이지
		alert("장시간 미사용으로 자동 로그아웃 처리되었습니다.");
	}
}
onload = initTimer;//현재 페이지 대기시간 
document.onclick = initTimer; // 현재 페이지의 사용자 마우스 클릭이벤트 캡춰 
document.onkeypress = initTimer;// 현재 페이지의 키보트 입력이벤트 캡춰 



$(function () {
	$("#menuBtn").click(function () {
		$("#menuBtnSlide").slideToggle(500);
		$("#topmenuMgn").find("li").css("width", "100%");
	})

})

// 관리자 로그인 시 
$(document).ready(function(){
 	
	$(window).resize(function() {
		if($(window).width() > 1199) {
			var flag = ${Auth.uIsMgr == true?true:false}
			if(flag){
				$("#topmenu").find("li").css("width", "20%");
				$("#guestMenu").css("display", "none");
			}
		}
		
		if($(window).width() < 1198) {
			var flag = ${Auth.uIsMgr == true?true:false}
			if(flag){
				$("#guestMenu").css("display", "none");
				$("#topmenuMgn").find("li").css("width", "100%");
				
				$("#mgnMenu").click(function(){
					   $("#submenu").slideToggle("slow");
				});
			}
		}		

	});
	
	$("#homeopen").click(function(){
		$("#guestMenu").slideToggle("slow");
		if($(window).width() < 1198){
			$("#topmenu").find("li").css("width", "100%");
			$("#topmenuMgn").find("li").css("width", "100%");		
		}else{
			$("#topmenu").find("li").css("width", "16.6%");
			$("#topmenuMgn").find("li").css("width", "20%");			   
		}
	});
	
	$(window).resize();
});
	
</script>

</head>

<body>
	<div id="container">
	



		<header>
			<!-- 비활성화 시키는 레이어-->
			<div id='coverFilmMain'	style='z-index: 99997; position: absolute; visibility: hidden; width: 100%; height: 100%; background-color: #000000; filter: Alpha(opacity = 20); opacity: 0.6; -moz-opacity: 0.6; text-align: center; font-size: 12pt; color: black;'></div>
		
			<div id="title">
				<a href="${pageContext.request.contextPath}/view/home.do"><img src="${pageContext.request.contextPath}/images/logo.png"></a>
			</div>

			
			<div id="warpFmobile">
				<div id="menuBtn">
					<img src="${pageContext.request.contextPath}/images/menuBtn.jpg">
				</div>
				<div id="menuBtnSlide">
					<div id="Idcheck">
						<c:if test="${Auth != null }">
							<span>${Auth.uName}님</span>
							<span><a href="${pageContext.request.contextPath}/login/logout.do">LogOut</a></span>
						</c:if>
						<c:if test="${Auth == null }">
							<span><a href="${pageContext.request.contextPath}/login/login.do">Login</a></span> |
							<span><a href="${pageContext.request.contextPath}/login/joinServiceCheck.do">Join</a></span>
						</c:if>
					</div>
					
					<div id="loginMenu">
						<c:if test="${Auth.uIsMgr == false }">
							<!-- 일반회원일경우 -->
							<c:if test="${Auth.uIsSns == false }">
								<span class="mymenu"><a href="${pageContext.request.contextPath}/member/mypage.do">마이 페이지</a></span>
								<!-- 자동로그아웃시까지 남은 시간을 보여주는 레이어-->
								<div id="timer"></div>
							</c:if>
							
							<!-- SNS회원일경우 -->
							<c:if test="${Auth.uIsSns == true }">
								<span class="mymenu"><a href="${pageContext.request.contextPath}/member/mypage.do">마이 페이지</a></span>
							</c:if>
						</c:if>
					</div>
					
					<div id="topmenu">
						<ul id="guestMenu">
							<a href="${pageContext.request.contextPath}/view/produce.do"><li>INTRO</li></a>
							<a href="${pageContext.request.contextPath}/view/hair.do"><li>HAIR</li></a>
							<a href="${pageContext.request.contextPath}/view/video.do"><li>VIDEO</li></a>
							<a href="${pageContext.request.contextPath}/board/managerList.do"><li>NOTICE</li></a>
							<a href="${pageContext.request.contextPath}/review/review.do"><li>REVIEW</li></a>
							<a href="${pageContext.request.contextPath}/reserve/form.do"><li>RESERVATION</li></a>							
						</ul>
						<c:if test="${Auth.uIsMgr == true }">
							<div id="topmenuMgn">
								<ul id="submenu">
									<a href="#"><li id="homeopen">홈메뉴 보기</li></a>									
									<a href="${pageContext.request.contextPath}/management/reserve.do"><li>예약관리</li></a>
									<a href="${pageContext.request.contextPath}/guest/guestList.do"><li>회원관리</li></a>
									<a href="${pageContext.request.contextPath}/management/designerList.do"><li>디자이너관리</li></a>
									<a href="${pageContext.request.contextPath}/management/chart.do"><li>차트통계</li></a>
								</ul>
							</div>							
					</c:if>
					</div>
					

				</div>
				
			</div>
			
			
			<button id="chatShow">채팅 숨기기</button>
			<div id="chat">
				<%@ include file="../../ChatClient.jsp"%>
			</div>
			
			<script>
				$("#chatShow").click(function() {
					
					if($(this).text()=='채팅 숨기기'){
						$("#chat").animate({right:"-230px"},1000);
						$(this).text("채팅 보이기");
					}else{
						$("#chat").animate({right:"0px"},1000);
						$(this).text("채팅 숨기기");
					}
					
				})
			</script>
		</header>
		
		
	
	
	
		
		
					
	