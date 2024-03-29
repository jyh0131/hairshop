<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
@media screen and (min-width:1200px){
#passChecker{
	width: 1080px;
	height: 450px;
	margin: 0 auto;
	text-align: center;
}
#passChecker h1{
	padding: 10px;
	margin-top: 10px;
	text-align: center;
}
#passChecker form{
	margin: 10px;
	margin: 0 auto;
}
#passChecker input{
	width: 220px;
	height: 40px;
	margin-bottom: 10px;
}
#passChecker fieldset{
	width: 350px;
	height: 200px;
	margin: 0 auto;
	margin-top: 100px;
}
}

@media all and (max-width:1199px){

#passChecker{
	width: 100%;
	margin: 0 auto;
	text-align: center;
}
#passChecker form{
	width: 80%;
	margin: 10px;
	margin: 0 auto;
}	
#passChecker form input{
	width: 70%;
	height: 40px;
	margin: 10px;
}

#passChecker fieldset{
	width: 70%;
	margin: 0 auto;
	margin-top: 80px;
	margin-bottom: 80px;
	padding: 20px;
}

}
</style>


<section id="passChecker">

	<fieldset>
		<h1>비밀번호 확인</h1>
		<form action="${pageContext.request.contextPath}/member/passCheck.do" method="post">
			<p><input type="password" name="password" ></p>
			<p><input type="submit" value="확인"></p>
		</form>
	</fieldset>

</section>




<%@ include file="../../include/footer.jsp" %>