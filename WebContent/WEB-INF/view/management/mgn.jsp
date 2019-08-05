<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#mgn{
	background-color: #ccc;
	width: 1080px;
	margin: 0 auto;
	
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>


<section id="mgn">

	<ul>
		<a href="#"><li>남호</li></a>
		<a href="#"><li>예약 관리(list 보기, 수정, 등록, 삭제?)</li></a>
		<a href="#"><li>추가</li></a>
	</ul>
	<br><br>
	<ul>
		<a href="#"><li>종훈</li></a>
		<a href="#"><li>회원 관리(수정, 삭제)</li></a>
		<a href="#"><li>추가</li></a>		
	</ul>
	<br><br>
	<ul>
		<a href="#"><li>다영</li></a>
		<a href="#"><li>추가??</li></a>	
	</ul>
	<br><br>
	<ul>
		<a href="#"><li>영각</li></a>
		<a href="#"><li>회원 등급 관리(최초가입시 브론즈)</li></a>
		<a href="#"><li>회원>디자이너, 디자이너>손님 으로 변경 하는 기능</li></a>
	</ul>





</section>




<%@ include file="../../include/footer.jsp" %>