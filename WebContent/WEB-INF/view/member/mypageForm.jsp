<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#mypage{
	width:1080px;
	margin: 0 auto;
	text-align: center;
}

#mypage #header, #mybio{
	margin: 0 auto;
}
#mypage #mybio table{
	border-collapse: collapse;
}
#mypage #mybio table th, td, tr{
	border: 1px solid red;
}
</style>
    
    
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>

</script>
    
    
    
    
<section id="mypage">

    <div id="header">
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
    
    
    
    
    
    
    
        
    
    
    
    
    
    




</section>





<%@ include file="../../include/footer.jsp" %>
    