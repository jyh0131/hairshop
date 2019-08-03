<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>

#loginform section{
	width:1080px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;
}
#loginform form{
	width: 1080px;
	margin: 0 auto;
	
	padding-top: 40px;
	padding-bottom: 40px;
	
	background-color: lightgreen;
}

#loginform p{
	position: relative;
	padding-left: 430px;
	margin: 15px;
}

#loginform .loiginFormInput{
	width: 180px;
	height: 40px;
	margin: 5px;
}

#loginform input #isMgn{
	
}
#loginform .error{
	position: absolute;
	top: 18px;
	left: 630px;
}

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common_kyg.js"></script>
<script>

	$(function () {
		$("#f1").submit(function() {
			$(".error").css("display", "none")
			$(".error2").css("display", "none")
			
			//빈 input태그가 존재하면 submit를 막는다
			if(checkInputEmpty( $("input[name]") ) == false){
				return false;
			}
			
			//입력 필드가 비어 있을때
			if( $("input[name='password']").val() == null ){
				$("input[name='password']").next().css("display", "inline");
				return false;
			}
			if( $("input[name='id']").val() == null ){
				$("input[name='id']").next().css("display", "inline");
				return false;
			}
		})
	})

</script>

<section id="loginform">

	<form action="${pageContext.request.contextPath}/member/login.do" method="post" id="f1">

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
			<input type="password" name="password" id="pass" class="loiginFormInput" placeholder="비밀번호를 입력하세요">
			<span class="error">비밀번호를 입력하세요</span>
		</p>
		<p>
			<input type="submit"  class="loiginFormInput" value="로그인">
		</p>
		

	
	</form>











</section>





<%@ include file="../../include/footer.jsp" %>










