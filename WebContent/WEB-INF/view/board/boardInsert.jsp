<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../../include/header.jsp" %>
<style>
	*{
		padding:0;
		margin:0;
	}
	section{
		width: 40%;
		margin: 0 auto;
		padding-top: 40px;
		padding-bottom: 40px;
	}
	label{
		margin-right: 20px;	
	}
	#label{
		text-align: center;
	}
	input{
		width: 400px;
		height: 30px;
	}
	#rWriter{
		border:none;
		background-color: white;
	}
	#button{
		text-align: right;
		padding-right: 60px;
	}
	#button input{
		width: 60px;
		height: 30px;
		background-color: white;
		border: 1px solid #ccc;
		color:#5D5D5D;
	}
</style>



<section>
	<form action="${pageContext.request.contextPath}/board/managerInsert.do" id="f1" method="post" enctype="multipart/form-data">
	<p>
		<label>이름</label>
		<input type="text" name="rWriter" disabled="disabled" id="rWriter" value="${Auth.uId }">	
	</p>
	<br>
	<p>
		<label>제목</label>
		<input type="text" name="rTitle">	
	</p>
	<br>
	<p>
		<label>내용</label>
		<!-- <textarea rows="20" cols="90" name="rContent"></textarea> -->
		<textarea name="rContent" id="weditor" rows="10" cols="100"></textarea>
	</p>
	<br>
	<p>
		<label>사진</label>
		<input type="file" name="rFile">	
	</p>
	<br>
	<p id="button">
		<input id="bbBtn" type="button" value="등록">
		<input type="reset" value="취소">
	</p>
	</form>
</section>

<script type="text/javascript">

	$("#bbBtn").click(function () {
		oEditors.getById['weditor'].exec('UPDATE_CONTENTS_FIELD', []);
		$("#f1").submit();
	})

	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "weditor",
	    sSkinURI: "${pageContext.request.contextPath}/se2/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	});

</script> 

<%@ include file="../../include/footer.jsp" %>


















