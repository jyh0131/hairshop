<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
@media screen and (min-width:1200px){
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
}

@media all and (max-width:1199px){

#MMForm{
	width:100%;
	margin: 0 auto;
	margin-top: 10px;
	margin-bottom: 10px;
}
#MMForm form{
	width: 95%;
	margin: 0 auto;
	padding-top: 10px;
	padding-bottom: 10px;
}
#MMForm p{
	width: 100%;
	height: 60px;
	line-height: 60px;
}
#MMForm p input{
	height: 30px;
}
#MMForm label{
	height:100%;
	width: 150px;
	line-height: 60px;
	float: left;
}
#MMForm p:last-child{
	text-align: center;
}
#MMForm #btnSubmit{
	width: 50%;
	height: 50px;
}

}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script>

	$(function () {
		$("#f1").submit(function() {
			
			var dcheck = confirm("수정 하시겠습니까?");
			if (dcheck == false){
				alert("취소 하셨습니다");
				return false;
				
			}else{
				alert("수정 되었습니다");
			}

		})
		
	})

</script>

<section id="MMForm">

	<form action="${pageContext.request.contextPath}/member/guestModify.do" method="post" id="f1">

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
			<label>우편번호</label>
			<input type="text" id="postcode" name="postcode" class="input" value="${guest.gPostcode }">
			<input type="button" onclick="execDaumPostcode()" class="sBtn" value="우편번호 찾기">
		</p>
		
		<p>
			<label>주소</label>
			<input type="text" id="roadAddress" name="roadAddr" class="input" value="${guest.gRoadAddr }">
			<!-- <input type="text" id="jibunAddress" class="input" placeholder="지번주소" > -->
			<span id="guide" style="color:#999;display:none"></span>
		</p>
		
		<p>
			<label>상세 주소</label>
			<input type="text" id="detailAddress" name="detailAddr" class="input" value="${guest.gDetailAddr }">
			<!-- <input type="text" id="extraAddress" class="input" placeholder="참고항목">	 -->
		</p>
		
		
		<p>
			<input type="submit" value="수 정" id="btnSubmit">
		</p>
	
	</form>

</section>

<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
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
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                
                
/*                 document.getElementById("jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                } */

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
<%@ include file="../../include/footer.jsp" %>




