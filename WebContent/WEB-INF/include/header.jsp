<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width, initial-scale=1">
<link rel="favicon" href="${pageContext.request.contextPath}/images/favicon.ico">
<title>차홍아르더</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" type="text/css">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<style>

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
	width: 13%;
	height: 60px;
	line-height: 60px;
	text-decoration: none;
	text-align: center;
	float: left;
	display: inline-block;
}
a#reserve li{
	width:180px !important;
	margin-left:10px;
}
header #topmenu li:hover{
	text-decoration: underline;
}
header #topmenuMgn{

}
header #topmenuMgn ul a{
	color: black;
	font-weight: bold;
}

header #topmenuMgn ul li{
	width: 152px;
	height: 60px;
	line-height: 60px;
	text-decoration: none;
	text-align: center;
	float: left;
	display: inline-block; 
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
	font-size: 20px;
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





</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>

$(function () {
	
	//a 태그 막고 팝업 실행 시키기
	
	$("#reserve").click(function(e) {
		e.preventDefault();
		$("#reserve").css("background-color", "red");
		return false;
	})

	
})

// 관리자 로그인 시 
$(document).ready(function(){
 	
	<c:if test="${Auth.uIsMgr == true }">
		$("#topmenu").css("display", "none");
	</c:if>

});
	
</script>

</head>

<body>
	<div id="container">
		<header>
			<div id="title">
				<a href="${pageContext.request.contextPath}/view/home.do"><img src="${pageContext.request.contextPath}/images/logo.png"></a>
			</div>
			
			<div id="Idcheck">
				<c:if test="${Auth != null }">
					<span><a href="${pageContext.request.contextPath}/member/mypage.do">${Auth.uName}</a>님 반갑습니다</span>
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
				<ul>
					<a href="${pageContext.request.contextPath}/view/produce.do"><li>INTRO</li></a>
					<a href="${pageContext.request.contextPath}/view/hair.do"><li>HAIR</li></a>
					<a href="${pageContext.request.contextPath}/view/video.do"><li>VIDEO</li></a>
					<a href="${pageContext.request.contextPath}/board/managerList.do"><li>NOTICE</li></a>
					<a href="${pageContext.request.contextPath}/review/review.do"><li>REVIEW</li></a>
					<a href="${pageContext.request.contextPath}/reserve/form.do"><li>RESERVATION</li></a>
					<a href="${pageContext.request.contextPath}/reserve/form.do" id="reserve"><li>RESERVATION STATE</li></a>
				</ul>
			</div>
			<c:if test="${Auth.uIsMgr == true }">
			<div id="topmenuMgn">
				<ul>
					<a href="${pageContext.request.contextPath}/"><li>관리자페이지</li></a>
					<a href="${pageContext.request.contextPath}/management/reserve.do"><li>예약관리</li></a>
					<a href="${pageContext.request.contextPath}/board/managerList.do"><li>공지사항</li></a>
					<a href="${pageContext.request.contextPath}/guest/guestList.do"><li>회원관리</li></a>
					<a href="${pageContext.request.contextPath}/management/gradeChange.do"><li>등급관리</li></a>
					<a href="${pageContext.request.contextPath}/management/guestChange.do"><li>승급관리</li></a>
					<a href="${pageContext.request.contextPath}/management/chart.do"><li>차트통계</li></a>
				</ul>
			</div>
			</c:if>
			<button id="chatShow">채팅 숨기기</button>
			<div id="chat">
			
				<%@ include file="../../ChatClient.jsp"%>
			</div>
			
			<script>
				$("#chatShow").click(function() {
					$("#chat").slideToggle();
					if($(this).text()=='채팅 숨기기'){
						$(this).text("채팅 보이기");
					}else{
						$(this).text("채팅 숨기기");
					}
					
				})
			</script>
		</header>
		
		
	
	
	
		
		
					
	