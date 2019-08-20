<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
@media screen and (min-width:1200px){

#loginform {
	width: 1080px;
	margin: 0 auto;
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
}

@media all and (max-width:1199px){

#loginform {
	width: 100%;
	margin: 0 auto;
	margin-top: 80px;
	margin-bottom: 80px;
	text-align: center;
	font-size: 23px;
}
#loginform form{
	width: 60%;
	margin: 0 auto;
	padding-top: 10px;
	padding-bottom: 10px;
}
#loginform p{
	margin-top: 10px;
	margin-bottom: 10px;
	
}
#loginform input{
	width: 100%;
	height: 40px;
}
#loginform select{
	width: 100%;
	height: 40px;
}

}

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(function() {
		
		$("#find").click(function() {
			$(location).attr('href', '${pageContext.request.contextPath}/login/findIdPass.do');
		})
		
		//로그인 전에 아이디를 ajax로 검색해서 db에 있는지 없는지 판단한 결과가 저장되는 flag
		var flag = false;
		
		$("#f1").submit(function() {
			
			if( $("select[name='isMgn']").val() == 0){
				if(flag ==  false){
					$.ajax({
						url:"${pageContext.request.contextPath}/login/designerSelcetById.do",
						type:"post",
						data:{"id" : $("#id").val(), "password" : $("#password").val() },
						dataType:"json",
						success:function(data){
							console.log(data); // data 1 같은 아이디가 있다, 0 아이디가 없다
							if(data==0){
								alert("없는 관리자 아이디 입니다");
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
							}else if(data==2){
								alert("비밀번호를 확인하세요");
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
							}else{
								//로그인 전에 아이디를 ajax로 검색해서 db에 있는지 없는지 판단한 결과가 저장되는 flag
								flag = true;
								$("#f1").submit();
							}
						}
					})
					return false;
				}					
			}else{
				
				if(flag ==  false){
					$.ajax({
						url:"${pageContext.request.contextPath}/login/guestSelcetById.do",
						type:"post",
						data:{"id" : $("#id").val(), "password" : $("#password").val()  },
						dataType:"json",
						success:function(data){
							console.log(data);// 1 = 같은 아이디가 있다, 0 아이디가 없다, 2 비번일 틀림
							
							if(data==0){
								alert("없는 아이디 입니다");
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
							}else if(data==2){
								alert("비밀번호를 확인하세요");
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
							}else{
								//로그인 전에 아이디를 ajax로 검색해서 db에 있는지 없는지 판단한 결과가 저장되는 flag
								flag = true;
								$("#f1").submit();
							}
						}
					})
					return false;
				}	
			}
		})
		
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "FWPeAQ9CLXanGC2lQSxd", /* 개발자센터에 등록한 ClientID */
			callbackUrl : "http://localhost:8080/hairshop/login/snsLoginCheck.do", /* 개발자센터에 등록한 callback Url */
			isPopup : false, /* 팝업을 통한 연동처리 여부 */
			loginButton : { color : "green", type : 3, height : 40 } /* 로그인 버튼의 타입을 지정 */
		});
		naverLogin.init();
		
	})
</script>

<section id="loginform">

	<form action="${pageContext.request.contextPath}/login/login.do" method="post" id="f1">

		<P>
			<select name="isMgn">
				<option value="1">Guest Mode</option>
				<option value="0">Mgn Mode</option>
			</select>
		</P>
		<p>
			<input type="text" name="id" id="id" class="loiginFormInput" placeholder="아이디를 입력하세요">
			<span class="error">ID를 입력하세요</span>
		</p>
		<p>
			<input type="password" name="password" id="password" class="loiginFormInput" placeholder="비밀번호를 입력하세요">
			<span class="error">비밀번호를 입력하세요</span>
		</p>
		<p>
			<input type="submit" class="loiginFormInput" value="로그인">
		</p>
		<p>
			<input type="button" class="loiginFormInput" id="find" value="아이디/비밀번호 찾기">
		</p>
		<input type="text" id="sample4_postcode" placeholder="우편번호">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
		<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
		<span id="guide" style="color:#999;display:none"></span>
		<input type="text" id="sample4_detailAddress" placeholder="상세주소">
		<input type="text" id="sample4_extraAddress" placeholder="참고항목">


		<!-- 네이버아이디로로그인 버튼 노출 영역 -->
		<div id="naverIdLogin"></div>
		<!-- //네이버아이디로로그인 버튼 노출 영역 -->

	</form>

</section>

<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>		




<%@ include file="../../include/footer.jsp"%>

















