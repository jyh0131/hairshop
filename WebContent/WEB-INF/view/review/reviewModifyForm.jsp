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
	<form action="${pageContext.request.contextPath}/review/modify.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="rNo" value="${list.rNo }">
	<p>
		<label>이름</label>
		<input type="text" name="rWriter" disabled="disabled" id="rWriter" value="${list.rWriter }">	
	</p>
	<br>
	<p>
		<label>제목</label>
		<input type="text" name="rTitle" value="${list.rTitle }">	
	</p>
	<br>
	<p>
		<label>내용</label>
		<textarea rows="20" cols="90" name="rContent">${list.rContent }</textarea>
	</p>
	<br>
	<p>
		<label>사진</label>
		<input type="file" name="rFile" value="${list.rFile }">	
	</p>
	<br>
	<p id="button">
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</p>
	</form>

</section>
<%@ include file="../../include/footer.jsp" %>