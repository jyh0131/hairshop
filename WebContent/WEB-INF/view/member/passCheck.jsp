<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#passChecker{
	width: 1080px;
	height: 450px;
	margin: 0 auto;
	text-align: center;
}
#passChecker h1{
	padding: 10px;
	margin-top: 150px;
	text-align: center;
}
#passChecker form{
	width:960px;
	margin: 10px;
	margin: 0 auto;
}

</style>


<section id="passChecker">

	<h1>비밀번호 확인</h1>
	<form action="${pageContext.request.contextPath}/member/passCheck.do" method="post">
		<input type="password" name="password">
		<input type="submit" value="확인">
	</form>


</section>




<%@ include file="../../include/footer.jsp" %>