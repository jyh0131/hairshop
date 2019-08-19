<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../../include/header.jsp" %>
<style>
	*{
		padding:0;
		margin:0;
	}
	@media screen and (min-width:1200px){
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
	}
	@media all and (max-width:1199px){
	section{
		width: 90%;
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
		width: 220px;
		height: 30px;
	}
	textarea{
		width: 250px;
		height: 200px;
		position: relative;
		margin-left:57px;
	}
	#sodd{
		position: absolute;
		top:220px;
		left: 18px;
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
		
	}
</style>
<section>
	<form action="${pageContext.request.contextPath}/review/insert.do" method="post" enctype="multipart/form-data" id="f1">
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
		<textarea rows="20" cols="90" name="rContent" id="weditor">차홍아르더를 이용해 주셔서 감사드립니다. 고객님의 한 줄 리뷰가 저희들에게 큰 힘이 됩니다^^!<br>
담당디자이너:<br>
시술메뉴:<br>
만족도(10점 만점):<br>
총평:<br>
		</textarea>
	</p>
	<br>
	<p>
		<label>사진</label>
		<input type="file" name="rFile">	
	</p>
	<br>
	<p id="button">
		<input type="button" id="bbBtn" value="등록">
		<input type="reset" value="취소" id="inputreset">
	</p>
	</form>
</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$("#inputreset").click(function(){
			location.href="/hairshop/review/review.do";
		})
	})
	
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

















