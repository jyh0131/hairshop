<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#mgn{
	background-color: #eee;
	width: 800px;
	margin: 0 auto;
	
	margin-top: 30px;
	margin-bottom: 30px;
}
#mgn li{
	list-style: none;
}
#mgn a{
	text-decoration: none;	
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>


<section id="mgn">

	<ul>
		<a href="#"><li>남호</li></a>
		<a href="/management/reserve.do"><li>예약 관리(list 보기, 수정, 등록, 삭제?)</li></a>
		<a href="#"><li>추가</li></a>
	</ul>
	<br><br>
	<ul>
		<a href="#"><li>종훈</li></a>
		<a href="../guest/guestList.do"><li>회원 관리(수정, 삭제)</li></a>
		<a href="#"><li>추가</li></a>		
	</ul>
	<br><br>
	<ul>
		<a href="#"><li>다영</li></a>
		<a href="#"><li>추가</li></a>	
	</ul>
	<br><br>
	<ul>
		<a href="#"><li>영각</li></a>
		<a href="${pageContext.request.contextPath}/management/gradeChange.do"><li>회원 등급 관리(최초가입시 브론즈), 디자이너 등급 관리</li></a>
		<a href="${pageContext.request.contextPath}/management/guestChange.do"><li>회원>디자이너, 디자이너>회원 으로 변경</li></a>
	</ul>





</section>




<%@ include file="../../include/footer.jsp" %>