<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
@media screen and (min-width:1200px){
#IPfinder{
	width:1080px;
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 30px;
	text-align: center;
}
#IPfinder h1{
	margin: 20px;
}
#IPfinder #idFinder{
	width: 70%;
	background-color: lightgreen;
	padding-bottom:15px;
	padding-top:15px;
	margin: 0 auto;
}
#IPfinder #passReset{
	width: 70%;
	background-color: #ccc;
	padding-bottom:15px;
	padding-top:15px;
	margin: 0 auto;
}

#IPfinder p{
	margin-top: 10px;
	margin-bottom: 10px;
}
#IPfinder input{
	width: 30%;
	height: 40px;
}
}

@media all and (max-width:1199px){
#IPfinder{
	width:100%;
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 30px;
	text-align: center;
}
#IPfinder h1{
	margin: 20px;
}
#IPfinder #idFinder{
	width: 70%;
	background-color: lightgreen;
	padding-bottom:15px;
	padding-top:15px;
	margin: 0 auto;
}
#IPfinder #passReset{
	width: 70%;
	background-color: #ccc;
	padding-bottom:15px;
	padding-top:15px;
	margin: 0 auto;
}
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>

$(function() {
	
	$("#idChecker").click(function() {
		$.ajax({
			url:"${pageContext.request.contextPath}/login/idFind.do",
			type:"post",
			data:{"email" : $("#idFindEmail").val() },
			dataType:"json",
			success:function(res){ //res = 1 아이디가 있음, 0 아이디 없음 
				console.log(res);
				
				if(res == 1){
					alert("아이디를 이메일로 발송하였습니다");
					$("#idFindEmail").val("");
				}else{
					alert("이메일이 검색되지 않았습니다");
				}
			}
		})
	})
	
	$("#passReset").click(function() {
		$.ajax({
			url:"${pageContext.request.contextPath}/login/passReset.do",
			type:"post",
			data:{"id" : $("#id").val(), "email" : $("#passFindEmail").val() },
			dataType:"json",
			success:function(res){ //res = 1 아이디가 있음, 0 아이디 없음 
				console.log(res);

				if(res == 1){
					alert("임시 비밀번호를 이메일로 전송하였습니다");
					$("#id").val("");
					$("#passFindEmail").val("");
				}else{
					alert("다시 시도하세요");
				}
			}
		})
	})
})

</script>



<section id="IPfinder">

	<h1>아이디/비밀번호 찾기</h1>

	<div id="idFinder">
		<p><h3>아이디 찾기</h3>(가입시 사용한 이메일을 입력하세요)</p>
		<p><input type="text" id="idFindEmail" placeholder="이메일을 입력하세요"></p>
		<p><input type="button" value="전송" id="idChecker"></p>
	</div>
	
	<div id="passReset">
		<p><h3>비밀번호 찾기</h3></p>
		<p><input type="text" id="id" placeholder="아이디를 입력하세요"></p>		
		<p><input type="text" id="passFindEmail" placeholder="이메일을 입력하세요"></p>
		<p><input type="button" value="전송" id="passChecker"></p>
	</div>

</section>




<%@ include file="../../include/footer.jsp" %>
















































