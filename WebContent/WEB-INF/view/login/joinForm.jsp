<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

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
		var idcheck=0;
		
		$("#f1").submit(function() {
			$(".error").css("display", "none")
			$(".error2").css("display", "none")
			
			//빈 input태그가 존재하면 submit를 막는다
			if(idcheck==0){
				alert("ID중복확인을 진행해 주세요.");
				idcheck=0;
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
				}
			}
			
			var idcheck = /^[a-z0-9]{1,15}$/i;
			var id = $("input[name='id']").val();
			if( idcheck.test(id) == false ){
				$("input[name='id']").next().css("display", "inline");
				return false;
			}
			
			var namecheck = /^[가-힣]{1,5}$/;			
			var name = $("input[name='name']").val();
			if( namecheck.test(name) == false ){
				$("input[name='name']").next().css("display", "inline");
				return false;
			}
			
			var pwcheck = /^[a-zA-Z0-9!@#]{1,20}$/i;
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
		
		$("#btnCheck").click(function() {
			$.ajax({
				url:"${pageContext.request.contextPath}/login/idCheckHandler.do",
				type:"get",
				data:{"id" : $("#id").val() },
				dataType:"json",
				success:function(res){ //res = 1 아이디가 있음, 0 아이디 없음 
					console.log(res);

					if(res == 1){
						confirm('ID가 존제합니다');
					}else{
						confirm('가입이 가능합니다');
						idcheck = 1;
					}

				}
			})
		})
	})

</script>

<section id="joinForm">

	<form action="${pageContext.request.contextPath}/login/join.do" method="post" id="f1">

		<p><span>(<span class="fontColorRed">*</span>)</span>는 필수 입니다</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>아이디</label>
			<input class="input" type="text" name="id" id="id" value="${pram.id }" placeholder="영어,숫자 포함 1~15 자리">
			<span class="error">ID(영어, 숫자 6~15)를 입력하세요</span>
			<button id="btnCheck">ID 중복확인</button>
			<c:if test="${duplicatedId == true }">
				<span class="error2">이미 사용중인 ID입니다</span>
			</c:if>
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>비밀번호</label>
			<input class="input" type="password" name="password" placeholder="영어,숫자,특수문자 포함 1~20자리">
			<span class="error">비밀번호(영어, 숫자, 특수문자 포함, 1~20자)를 입력하세요</span>					
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
		</p>
		<p>
			<label><span>(<span class="fontColorRed">*</span>)</span>생일</label>
			<input class="input" type="date" name="birth" placeholder="생일">
		</p>
		<p>
			<label>이메일</label>
			<input class="input" type="email" name="email" placeholder="이메일">
		</p>

		<p>
			<input type="submit" value="회원가입" id="btnSubmit">
		</p>

	
	</form>

</section>


<%@ include file="../../include/footer.jsp" %>




