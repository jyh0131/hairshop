<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css">
<style>
#loginform section {
	width: 1080px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;
}

#loginform form {
	width: 1080px;
	margin: 0 auto;
	padding-top: 40px;
	padding-bottom: 40px;
}

#loginform p {
	position: relative;
	padding-left: 430px;
	margin: 15px;
}

#loginform .loiginFormInput {
	width: 180px;
	height: 40px;
	margin: 5px;
}

#loginform input #isMgn {
	
}

#loginform .error {
	position: absolute;
	top: 18px;
	left: 630px;
}

#loginform #naverIdLogin{
	text-align: center;
}
</style>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>
	$(function() {
		$("#f1").submit(function() {
			$(".error").css("display", "none")
			$(".error2").css("display", "none")

			//빈 input태그가 존재하면 submit를 막는다
			if (checkInputEmpty($("input[name]")) == false) {
				return false;
			}

			//입력 필드가 비어 있을때
			if ($("input[name='password']").val() == null) {
				$("input[name='password']").next().css("display", "inline");
				return false;
			}
			if ($("input[name='id']").val() == null) {
				$("input[name='id']").next().css("display", "inline");
				return false;
			}
		})
		
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "FWPeAQ9CLXanGC2lQSxd", /* 개발자센터에 등록한 ClientID */
			callbackUrl : "http://localhost:8080/hairshop/member/login.do", /* 개발자센터에 등록한 callback Url */
			isPopup : false, /* 팝업을 통한 연동처리 여부 */
			loginButton : { color : "green", type : 3, height : 40 } /* 로그인 버튼의 타입을 지정 */
		});
		naverLogin.init();		
		
		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					console.log(naverLogin);
					console.log(naverLogin.user.id);
					console.log(naverLogin.user.name);
					
					/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
					var email = naverLogin.user.getEmail();
					if( email == undefined || email == null) {
						alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
						/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
						naverLogin.reprompt();
						return;
					}
					
					window.location.replace("${pageContext.request.contextPath}/member/naverlogin.do?id="+naverLogin.user.id);

				} else {
					//alert("callback 처리에 실패하였습니다.")
				}
			});

			
		});

		
		
	})
</script>

<section id="loginform">

	<form action="${pageContext.request.contextPath}/member/login.do"
		method="post" id="f1">

		<P>
			<select name="isMgn">
				<option value="1">Guest Mode</option>
				<option value="0">Mgn Mode</option>
			</select>
		</P>
		<p>
			<input type="text" name="id" id="id" class="loiginFormInput"
				placeholder="아이디를 입력하세요"> <span class="error">ID를
				입력하세요</span>
		</p>
		<p>
			<input type="password" name="password" id="pass"
				class="loiginFormInput" placeholder="비밀번호를 입력하세요"> <span
				class="error">비밀번호를 입력하세요</span>
		</p>
		<p>
			<input type="submit" class="loiginFormInput" value="로그인">
		</p>
		
		
		<!-- 네이버아이디로로그인 버튼 노출 영역 -->
		<p><div id="naverIdLogin"></div></p>
		<!-- //네이버아이디로로그인 버튼 노출 영역 -->




	</form>











</section>





<%@ include file="../../include/footer.jsp"%>










