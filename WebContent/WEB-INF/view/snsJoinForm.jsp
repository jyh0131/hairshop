<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#joinForm section{
	width:1080px;
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 30px;
}
#joinForm form{
	width: 1080px;
	margin: 0 auto;
	padding-top: 40px;
	padding-bottom: 40px;
}
#joinForm h3{
	margin-top:30px;
	padding-left: 100px;
}
#joinForm p{
	padding-left: 100px;
	margin: 15px;
}	
#joinForm .input{
	width: 280px;
	height: 50px;
}
#joinForm label{
	line-height: 50px;
	width: 150px;
	float: left;
}
#joinForm #btnSubmit{
	width: 100px;
	height: 40px;
	margin-left: 150px;
}
#joinForm #btnCheck{
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
			
			//빈 input태그가 존재하면 submit를 막는다
			if(checkInputEmpty( $("input[tel]") ) == false){
				return false;
			}

		})
		
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "FWPeAQ9CLXanGC2lQSxd", /* 개발자센터에 등록한 ClientID */
			callbackUrl : "http://localhost:8080/hairshop/", /* 개발자센터에 등록한 callback Url */
			isPopup : false, /* 팝업을 통한 연동처리 여부 */
			callbackHandle: false
		});

		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					console.log(naverLogin);
					console.log(naverLogin.user.id);
					console.log(naverLogin.user.name);
					
					$("input[name='snsId']").val(naverLogin.user.id);
					$("input[name='snsName']").val(naverLogin.user.name);
					$("input[name='snsAge']").val(naverLogin.user.age);
					$("input[name='snsBirthday']").val(naverLogin.user.birthday);
					$("input[name='snsEmail']").val(naverLogin.user.email);
					$("input[name='snsGender']").val(naverLogin.user.gender);
					$("input[name='snsNickName']").val(naverLogin.user.nickname);
					
					//window.location.replace("${pageContext.request.contextPath}/member/naverlogin.do");

				} else {
					alert("callback 처리에 실패하였습니다.")
				}
			});
		});

		
	})

</script>

<section id="joinForm">

	<form action="${pageContext.request.contextPath}/snsJoin.do" method="post" id="f1">

		<p><span>(<span class="fontColorRed">*</span>)</span>는 필수 입니다</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>전화번호</label>
			<input class="input" type="text" name="tel" placeholder="전화번호">
		</p>
		<p>
			<label>생일</label>
			<input class="input" type="date" name="birth" placeholder="생일">
		</p>
				
		<div id="hiddenbox">
			<input type="hidden" name="snsId">
			<input type="hidden" name="snsName">
			<input type="hidden" name="snsEmail">
		</div>
					
		<p>
			<input type="submit" value="회원가입" id="btnSubmit">
		</p>
		
	</form>

</section>


<%@ include file="../include/footer.jsp" %>




