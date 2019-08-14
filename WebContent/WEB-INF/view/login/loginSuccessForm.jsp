<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#joinSuccess{
	width:1080px;
	height:450px;
	margin: 0 auto;
	margin-top: 60px;
	margin-bottom: 30px;
	text-align: center;
}
#joinSuccess h1{
	margin: 15px;
}
#joinSuccess h3{
	margin: 15px;
	padding-top: 30px;
}
#joinSuccess a{
	text-decoration: none;
	color: black;
}
#joinSuccess #lcolor{
	color: red;
}
</style>


<section id="joinSuccess">
	
	<h1>비밀번호 변경에 성공하셨습니다</h1>
	<a href="${pageContext.request.contextPath}/login/login.do"><h3><span id="lcolor">로그인</span> 하세요</h3></a>

</section>





<%@ include file="../../include/footer.jsp" %>
