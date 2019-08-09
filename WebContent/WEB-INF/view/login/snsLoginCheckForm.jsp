<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script>
	$(function() {
		
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "FWPeAQ9CLXanGC2lQSxd", /* 개발자센터에 등록한 ClientID */
			callbackUrl : "http://localhost:8080/hairshop/", /* 개발자센터에 등록한 callback Url */
			isPopup : false, /* 팝업을 통한 연동처리 여부 */
		});
		naverLogin.init();
		
		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					alert("로그인창에서 네이버 로그인 버튼을 클릭해서 여기에 왔다");
					alert("네이버 로그인 정보가 세션에 저장되었다");
					alert("실행파일 : snsLoginCheckForm.jsp 로그인되었다");
					alert("저장된 네이버 정보 중 id를 handler로 넘긴다 ");
				
				$("#naverId").val(naverLogin.user.id);		


				$("#btn").click();

				} else {
					alert("callback 처리에 실패하였습니다.")
				}
			});
		});
	})
</script>
<section>
	<form action="${pageContext.request.contextPath}/login/snsLoginCheck.do" method="post">
		<input type="hidden" name="id" id="naverId">
		<button type="submit" id="btn"></button>
	</form>

</section>