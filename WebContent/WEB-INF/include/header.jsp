<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" type="text/css">
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<style>
header{
	width: 1080px;
	height: 155px;
	margin:0 auto;
	margin-top: 20px;
	position: relative;
}
header #title{
	text-align: center;
}
header #title img{
	height: 90px;
}

header #topmenu ul{
	
}
header #topmenu ul a{
	color: black;
}
header #topmenu ul li{
	width: 180px;
	height: 60px;
	line-height: 60px;
	text-decoration: none;
	text-align: center;
	float: left;
	display: inline-block;
}

header #Idcheck{
	width:230px;
	height:30px;
	position: absolute;
	display: inline;
	top:0;
	right:0px;
	text-align: right;
	font-size: 13px;
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
header #topmenu li:hover{
	text-decoration: underline;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function () {
		
		$("#reserv").click(function() {
			var Auth = '${Auth.uId}';
			if( Auth != null){
				location.href="${pageContext.request.contextPath}/reserve/reserveState.do";
			}else{
				location.href="${pageContext.request.contextPath}/member/login.do";
			}
			
		})
	})
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
					<span><a href="${pageContext.request.contextPath}/member/logout.do">{로그아웃}</a></span>
				</c:if>
				<c:if test="${Auth == null }">
					<span><a href="${pageContext.request.contextPath}/member/login.do">{로그인}</a></span>
					<span><a href="${pageContext.request.contextPath}/member/joinServiceCheck.do">{회원가입}</a></span>
				</c:if>
			</div>
			
			<div id="loginMenu">
				<c:if test="${Auth.uIsMgr == true }">
					<span class="mymenu"><a href="${pageContext.request.contextPath}/management/mgn.do">관리자 페이지</a></span>
				</c:if>
				<c:if test="${Auth.uIsMgr == false }">
					<span class="mymenu"><a href="${pageContext.request.contextPath}/member/passCheck.do">마이 페이지</a></span>
				</c:if>
			</div>
			
			<div id="topmenu">
				<ul>
					<a href="${pageContext.request.contextPath}/"><li>intro</li></a>
					<a href="${pageContext.request.contextPath}/view/produce.do"><li>Staff</li></a>
					<a href="${pageContext.request.contextPath}/view/hair.do"><li>hair style</li></a>
					<a href="#"><li>viedo</li></a>
					<a href="${pageContext.request.contextPath}/reserve/form.do"><li>reservation</li></a>
					<a href="#" id="reserv"><li>reservation state</li></a>
				</ul>
			</div>
		</header>
		
	