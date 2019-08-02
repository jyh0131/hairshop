<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
	form{
		font-size: 16px;
		border: none;
	}
	fieldset{
		width: 960px;
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

<section>

		<form action="${pageContext.request.contextPath}/member/login.do" method="post" id="f1">
			<fieldset>
				<legend>로그인</legend>
				<p>
					<label>아이디</label>
					<input type="text" name="id">
					<span class="error">ID를 입력하세요</span>
				</p>
				<p>
					<label>비밀번호</label>
					<input type="password" name="password">
					<span class="error">비밀번호를 입력하세요</span>
				</p>			
				<p>
					<input type="submit" value="로그인">
				</p>
			</fieldset>
		
		</form>











</section>





<%@ include file="../../include/footer.jsp" %>










