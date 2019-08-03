<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#passChecker{
	width: 1080px;
	
}

</style>


<section id="passChecker">

	<form action="${pageContext.request.contextPath}/member/passCheck.do" method="post">
		<input type="password" name="password">
		<input type="submit" value="확인">
	</form>


</section>




<%@ include file="../../include/footer.jsp" %>