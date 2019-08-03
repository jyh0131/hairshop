<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="WEB-INF/include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>


<section>
	
<a href="${pageContext.request.contextPath}/view/hair.do">헤어</a><br>
<a href="${pageContext.request.contextPath}/view/produce.do">소개</a><br>
<a href="${pageContext.request.contextPath}/reserve/form.do">예약</a>
</section>

<%@ include file="WEB-INF/include/footer.jsp" %>







