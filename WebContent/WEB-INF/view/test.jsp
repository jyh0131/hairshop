<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#test {
	width: 1080px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;
	background-color: lightgreen;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>

	$(function () {

		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId : "FWPeAQ9CLXanGC2lQSxd", /* 개발자센터에 등록한 ClientID */
				callbackUrl : "http://localhost:8080/hairshop/", /* 개발자센터에 등록한 callback Url */
				isPopup: false,
				callbackHandle: false
			}
		);
	
		naverLogin.init();
		
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				console.log(naverLogin);
				
				var email = naverLogin.user.getEmail();
				console.log(email);
				var name = naverLogin.user.getNickName();
				var profileImage = naverLogin.user.getProfileImage();
				var birthday = naverLogin.user.getBirthday();			
				var uniqId = naverLogin.user.getId();
				var age = naverLogin.user.getAge();
				
				
				
			} else {
				alert("AccessToken이 올바르지 않습니다.");
			}
		});

		
	})

</script>

    
<section id="test">


</section>


<%@ include file="../include/footer.jsp" %>


    