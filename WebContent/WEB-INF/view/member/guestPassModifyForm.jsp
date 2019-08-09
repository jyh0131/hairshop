<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#MFMForm{
	width:1080px;
	height: 400px;
	margin: 0 auto;
	margin-top: 60px;
	margin-bottom: 30px;
}
#MFMForm fieldset{
	width: 550px;
	height: 360px;
	text-align: center;
	margin: 0 auto;
}
#MFMForm form{
/* 	width: 100%;
	height: 450px;
	margin: 0 auto;
	padding-top: 40px;
	padding-bottom: 40px; */
}
#MFMForm h1{
	padding-top: 10px;
	padding-bottom: 10px;
}
#MFMForm p{
	width: 100%;
	margin: 15px;
}
#MFMForm .input{
	width: 280px;
	height: 50px;
}
#MFMForm label{
	line-height: 50px;
	width: 180px;
	float: left;
	text-align: left;
}
#MFMForm #btnSubmit{
	width: 100px;
	height: 40px;
}
#MFMForm #btnCheck{
	width: 100px;
	height: 40px;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>
$(function () {
	$("#f1").submit(function() {

		var passCheck = 0;
		var dcheck = confirm("수정 하시겠습니까?");
		if (dcheck == false){
			alert("취소 하셨습니다");
			return false;
		}
		
		$(".error").css("display", "none")
		$(".error2").css("display", "none")

		//빈 input태그가 존재하면 submit를 막는다
		if (checkInputEmpty($("input[nowPassword]")) == false) {
			alert("비밀번호를 입력하세요");
			return false;
		}
		if (checkInputEmpty($("input[newPassword]")) == false) {
			alert("새로운 비밀번호를 입력하세요");
			return false;
		}
		if (checkInputEmpty($("input[newPasswordConfirm]")) == false) {
			alert("새로운 비밀번호를 확인 하세요");
			return false;
		}
		
		//입력 필드가 비어 있을때
		if ($("input[name='nowPassword']").val() == null) {
			$("input[name='nowPassword']").next().next().css("display", "inline");
			return false;
		}
		if ($("input[name='newPassword']").val() == null) {
			$("input[name='newPassword']").next().next().css("display", "inline");
			return false;
		}
		if ($("input[name='newPasswordConfirm']").val() == null) {
			$("input[name='newPasswordConfirm']").next().next().css("display", "inline");
			return false;
		}
/* 

		$.ajax({
			url:"${pageContext.request.contextPath}/member/guestPassModifyCheck.do",
			type:"post",
			data:{"pass" : $("#nowPassword").val() },
			dataType:"json",
			success:function(data){
				console.log(data);
				
				if(data == 0){
					alert("비밀번호를 확인 해주세요 : 아작스")
					passCheck = 0; // 실패
				}else{
					passCheck = 1; // 성공
				}
			}
		})
		
		if(data==0){
			return false;
		}

 */		var pwcheck = /^[a-zA-Z0-9!@#]{2,20}$/i;
		var pw = $("input[name='newPassword']").val();			
		if( pwcheck.test(pw) == false ){
			$("input[name='newPassword']").next().next().css("display", "inline");
			return false;
		}
		
		//password가 일치하지 않을때
		if( $("input[name='newPassword']").val() != $("input[name='newPasswordConfirm']").val() ){
			$("input[name='newPasswordConfirm']").next().next().next().css("display", "inline");
			return false;
		}

		
	})
	
})
</script>


<section id="MFMForm">	

	<fieldset>
	
		<form action="${pageContext.request.contextPath}/member/guestPassModify.do" method="post" id="f1">
			<p><h1>비밀 번호 변경</h1></p>
	 		<p>
				<label>현재 비밀번호</label>
				<input class="input" type="password" name="nowPassword" placeholder="비밀번호를 입력하세요"><br>
				<span class="error">비밀번호를 입력하세요</span>					
			</p>
	
	 		<p>
				<label>새로운 비밀번호</label>
				<input class="input" type="password" name="newPassword" placeholder="영어,숫자,특수문자 포함 8~20자리"><br>
				<span class="error">비밀번호(영어, 숫자, 특수문자 포함, 1~20자)를 입력하세요</span>
			</p>
			
			<p>
				<label>새로운 비밀번호 확인</label>
				<input class="input" type="password" name="newPasswordConfirm" placeholder="새로운 비밀번호 확인"><br>
				<span class="error">비밀번호 확인란을 입력하세요</span>
				<span class="error">비밀번호가 일치하지 않습니다</span>
			</p>
			
			<p>
				<input type="submit" value="수 정" id="btnSubmit">
			</p>
		</form>
		
	</fieldset>	


</section>




<%@ include file="../../include/footer.jsp" %>






