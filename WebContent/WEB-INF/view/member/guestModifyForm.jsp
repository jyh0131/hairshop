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
			<input type="submit" value="수 정" id="btnSubmit">
		</p>
	
	</form>

</section>


<%@ include file="../../include/footer.jsp" %>




