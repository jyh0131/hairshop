<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
@media screen and (min-width:1200px){

#joinForm{
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
	height: 50px;
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
#joinForm .sBtn{
	width: 140px;
	height: 40px;
}
#joinForm p:last-child{
	padding-left: 250px;
}
}

@media all and (max-width:1199px){
#joinForm{
	width:100%;
	margin: 0 auto;
	margin-top: 10px;
	margin-bottom: 10px;
}
#joinForm form{
	width: 95%;
	margin: 0 auto;
	
	padding-top: 10px;
	padding-bottom: 10px;
	position: relative;
}
#joinForm p{
	width: 100%;
	height: 60px;
	line-height: 60px;
}

#joinForm p pId{
	height: 120px;
}
#joinForm p input{
	height: 30px;
}
#joinForm label{
	height:100%;
	width: 150px;
	line-height: 60px;
	float: left;
}
#joinForm #btnCheck{
	position: absolute;
	top: 118px;
	left: 150px;
}
#joinForm p:last-child{
	text-align: center;
}
#joinForm .sBtn{
	width: 50%;
	height: 50px;
}

}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>

<script>
	var duplicateID = 0;
	
	$(document).ready(function(){

	    $("#btnSubmit").attr("disabled","disabled");
	    
	})

	$(function () {
		
		$("#btnReset").click(function() {
			duplicateID = 0;
			$("input[name='id']").val("");
			$("input[name='name']").val("");
			$("input[name='password']").val("");
			$("input[name='confirmPassword']").val("");
			$("input[name='tel']").val("");
			$("input[name='birth']").val("");
			$("input[name='realid']").val("");
			
			$("#btnSubmit").attr("disabled","disabled");
			$("input[name='id']").removeAttr("disabled");
			
			
		})
		
		$("#btnCheck").click(function() {
			
			var idcheck = /^[a-z0-9]{4,15}$/i;
			var id = $("input[name='id']").val();
			if( idcheck.test(id) == false ){
				alert("4자리 이상의 영어, 숫자로 입력하세요");
				return false;
			}else{
				
				$.ajax({
					url:"${pageContext.request.contextPath}/login/idCheckHandler.do",
					type:"get",
					data:{"id" : $("#id").val() },
					dataType:"json",
					success:function(res){ //res = 1 아이디가 있음, 0 아이디 없음 
						console.log(res);
						
						if($("#id").val() != ""){
							if(res == 1){
								confirm('ID가 존제합니다');
								duplicateID = 0;
							}else{
								confirm('가입이 가능합니다');
								duplicateID = 1;
								$("#btnSubmit").removeAttr("disabled");
								$("input[name='id']").attr("disabled","disabled");
								$("input[name='realid']").val($("input[name='id']").val());
							}						
						}else{
							alert("아이디를 입력하세요");
						}
					}
				})				
			}
		})
		
		
		$("#f1").submit(function() {
			$(".error").css("display", "none")
			$(".error2").css("display", "none")
			
			//빈 input태그가 존재하면 submit를 막는다
			if(duplicateID==0){
				alert("ID중복확인을 진행해 주세요.");
				duplicateID=0;
				return false;
			}else{
				
				if(checkInputEmpty( $("input[name='id']") ) == false){
					alert("아이디를 입력하세요");
					return false;
				}else if(checkInputEmpty( $("input[name='name']") ) == false){
					alert("이름를 입력하세요");
					return false;
				}else if(checkInputEmpty( $("input[name='password']") ) == false){
					alert("비밀번호를 입력하세요");
					return false;
				}else if(checkInputEmpty( $("input[name='tel']") ) == false){
					alert("전화번호를 입력하세요");
					return false;
				}else if(checkInputEmpty( $("input[name='birth']") ) == false){
					alert("생일을 입력하세요");
					return false;
				}else if(checkInputEmpty( $("input[name='email']") ) == false){
					alert("이메일을 입력하세요");
					return false;
				}
			}
			
			var idcheck = /^[a-z0-9]{4,15}$/i;
			var id = $("input[name='id']").val();
			if( idcheck.test(id) == false ){
				$("input[name='id']").next().css("display", "inline");
				return false;
			}
			
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
			
			var namecheck = /^[가-힣]{1,5}$/;			
			var name = $("input[name='name']").val();
			if( namecheck.test(name) == false ){
				$("input[name='name']").next().css("display", "inline");
				return false;
			}
			
			var birth = $("input[name='birth']").val();
			if ( birth == null){
				$("input[name='birth']").next().css("display", "inline");
				return false;
			}

			var email = $("input[name='email']").val();
			if ( email == null){
				$("input[name='email']").next().css("display", "inline");
				return false;
			}
			
			

		})
	})

	
	

</script>

<section id="joinForm">

	<form action="${pageContext.request.contextPath}/login/join.do" method="post" id="f1">
		
		<p>
			<span>ID중복확인을 하면 회원가입 버튼이 활성화됩니다.</span><br>
			<span><span>(<span class="fontColorRed">*</span>)</span>는 필수 입니다.</span>
		</p>

		<p id="pId">		
			<label><span>(<span class="fontColorRed">*</span>)</span>아이디</label>
			<input class="input" type="text" name="id" id="id" value="${pram.id }" placeholder="영어,숫자 포함 4~15 자리">
			<input type="hidden" name="realid" id="realid">
			<span class="error">ID(영어, 숫자 6~15)를 입력하세요</span>
			<button type="button" id="btnCheck" class="sBtn">ID 중복확인</button>
			<c:if test="${duplicatedId == true }">
				<span class="error2">이미 사용중인 ID입니다</span>
			</c:if>
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>비밀번호</label>
			<input class="input" type="password" name="password" placeholder="영어,숫자,특수문자 포함 4~20자리">
			<span class="error">비밀번호(영어, 숫자, 특수문자 포함, 4~20자)를 입력하세요</span>					
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>비밀번호 확인</label>
			<input class="input" type="password" name="confirmPassword" placeholder="비밀번호 확인">
			<span class="error">비밀번호 확인란을 입력하세요</span>
			<span class="error">비밀번호가 일치하지 않습니다</span>
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>이름</label>
			<input class="input" type="text" name="name" value="${param.name }" placeholder="한글 2~5">
			<span class="error">이름(한글 2~5)을 입력하세요</span>
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>전화번호</label>
			<input class="input" type="text" name="tel" placeholder="000-0000-0000 형식으로 입력하세요">
			<span class="error">전화번호를 입력하세요</span>
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>생일</label>
			<input class="input" type="date" name="birth" placeholder="생일">
			<span class="error">생일을 입력하세요</span>
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>이메일</label>
			<input class="input" type="email" name="email" placeholder="이메일">
			<span class="error">이메일을 입력하세요</span>
		</p>
		
		<p>
			<label>우편번호</label>
			<input type="text" id="postcode" name="postcode" class="input" placeholder="우편번호">
			<input type="button" onclick="execDaumPostcode()" class="sBtn" value="우편번호 찾기">
		</p>
		
		<p>
			<label>주소</label>
			<input type="text" id="roadAddress" name="roadAddr" class="input" placeholder="도로명주소">
			<span id="guide" style="color:#999;display:none"></span>
		</p>
		
		<p>
			<label>상세 주소</label>
			<input type="text" id="detailAddress" name="detailAddr" class="input" placeholder="상세주소">
		</p>
		
		<p>
			<input type="submit" value="회원가입" id="btnSubmit" class="sBtn">
			<input type="button" value="리셋" id="btnReset" class="sBtn">
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




