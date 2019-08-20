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
}
header #title img{
	height: 60%;
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
	/* display: none; */
}
header #submenu li{

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


}



</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>

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
								<span class="mymenu"><a href="${pageContext.request.contextPath}/member/passCheck.do">마이 페이지</a></span>
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
		
		
	
	
	
		
		
					
	