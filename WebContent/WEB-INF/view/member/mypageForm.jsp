<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#mypage{
	width:1080px;
	height:600px;
	margin: 0 auto;
	text-align: center;
}

#mypage #mpWrap{
	width:1080px;
	margin: 0 auto;
	text-align: center;
	
	margin-top: 30px;
	margin-bottm: 60px;
}
#mypage #mpWrap #mpHeader{
	margin: 10px;
	margin-top: 30px;
	margin-bottm: 30px;
}
#mypage #mybio table{
	border-collapse: collapse;
	margin: 0 auto;
}
#mypage #mybio table th, td, tr{
	border: 1px solid red;
	height: 40px;
}
#mypage #mybio table th:nth-child(1) {
	width: 100px;
}
#mypage #mybio table th:nth-child(2) {
	width: 100px;
}
#mypage #mybio table th:nth-child(3) {
	width: 100px;
}
#mypage #mybio table th:nth-child(4) {
	width: 200px;
}
#mypage #mybio table th:nth-child(5) {
	width: 200px;
}
#mypage #mybio table th:nth-child(6) {
	width: 100px;
}
#mypage #mybio table th:nth-child(7) {
	width: 50px;
}
#mypage #myMenuBtn div{
	width: 25%;
	height: 40px;
	color: black;
	float: left;
	background-color: #ggg;
	line-height: 40px;
}
#mypage #myMenuBtn{
	margin-top: 40px;
	margin-bottom: 40px;
}
#mypage #myMenuBtn div:hover{
	background-color: lightgreen;
}
#mypage #myMenuBtn a {
	text-decoration: none;
}


</style>
    
    
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
    
<section id="mypage">

	<div id="mpWrap">

	    <div id="mpHeader">
	    	<h1>마이 페이지</h1>
	    </div>
    
	    <div id="mybio">
	    	<table>
	    		<tr>
	    			<th>아이디</th>
	    			<th>이름</th>
	    			<th>등급</th>
	    			<th>전화번호</th>
	    			<th>이메일</th>
	    			<th>가입일</th>
	    			<th>포인트</th>
	    		</tr>
				<tr>
					<td>${Auth.uId }</td>
					<td>${Auth.uName }</td>
					<td>${guest.gLGrade.lGrade }</td>
					<td>${guest.gTel }</td>
					<td>${guest.gEmail }</td>
					<td>${guest.gJoin }</td>
					<td>${guest.gPoint }</td>
				</tr>
	    	</table>
	    </div>	
	
		<div id="myMenuBtn">
			<a href="${pageContext.request.contextPath}/reserve/reserveState.do"><div>예약정보 확인하기</div></a>
			<a href="#"><div>내 정보 수정하기</div></a>
			<a href="#"><div>예약정보 확인하기</div></a>
			<a href="#"><div>예약정보 확인하기</div></a>
		</div>
		
	</div>
    




</section>





<%@ include file="../../include/footer.jsp" %>





































    