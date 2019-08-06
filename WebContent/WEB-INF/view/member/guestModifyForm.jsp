<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#MMForm section{
	width:1080px;
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 30px;
}
#MMForm form{
	width: 1080px;
	margin: 0 auto;
	
	padding-top: 40px;
	padding-bottom: 40px;
	
	background-color: lightgreen;
}
#MMForm p{
	padding-left: 100px;
	margin: 15px;
}	

#MMForm .input{
	width: 280px;
	height: 50px;
}
#MMForm label{
	line-height: 50px;
	width: 150px;
	float: left;
}
#MMForm #btnSubmit{
	width: 100px;
	height: 40px;
	margin-left: 150px;
}
#MMForm #btnCheck{
	width: 100px;
	height: 40px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>

	$(function () {
		$("#f1").submit(function() {
			$(".error").css("display", "none")
			$(".error2").css("display", "none")
			
			var pwcheck = /^[a-zA-Z0-9!@#]{4,20}$/i;
			var pw = $("input[name='password']").val();			
			if( pwcheck.test(pw) == false ){
				$("input[name='password']").next().css("display", "inline");
				return false;
			}
			
			//password가 일치하지 않을때
			if( $("input[name='password']").val() != $("input[name='confirmPassword']").val() ){
				$("input[name='confirmPassword']").next().next().css("display", "inline");
				return false;
			}
		})
		
	})

</script>

<section id="MMForm">

	<form action="${pageContext.request.contextPath}/member/guestModifyForm.do" method="post" id="f1">

		<p>
			<label>비밀번호</label>
			<input class="input" type="password" name="password" placeholder="영어,숫자,특수문자 포함 8~20자리">
			<span class="error">비밀번호(영어, 숫자, 특수문자 포함, 8~20자)를 입력하세요</span>					
		</p>
		<p>
			<label>비밀번호 확인</label>
			<input class="input" type="password" name="confirmPassword" placeholder="비밀번호 확인">
			<span class="error">비밀번호 확인란을 입력하세요</span>
			<span class="error">비밀번호가 일치하지 않습니다</span>
		</p>

		<p>
			<label>전화번호</label>
			<input class="input" type="text" name="tel" value="${guest.gTel }">
		</p>
		<p>
			<label>이메일</label>
			<input class="input" type="email" name="email" value="${guest.gEmail }">
		</p>
		<p>
			<label>생일</label>
			<input class="input" type="date" name="birth" value="<fmt:formatDate value="${guest.gBirth}" pattern='yyyy-MM-dd'/>">
		</p>
		<p>
			<input type="submit" value="수 정" id="btnSubmit">
		</p>
	
	</form>

</section>


<%@ include file="../../include/footer.jsp" %>




