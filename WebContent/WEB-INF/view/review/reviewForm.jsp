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
	<form action="${pageContext.request.contextPath}/review/insert.do" method="post">
	<p>
		<label>이름</label>
		<input type="text" name="rWriter" disabled="disabled" id="rWriter">	
	</p>
	<br>
	<p>
		<label>제목</label>
		<input type="text" name="rTitle">	
	</p>
	<br>
	<p>
		<label>내용</label>
		<textarea rows="20" cols="90">차홍아르더를 이용해 주셔서 감사드립니다. 고객님의 한 줄 리뷰가 저희들에게 큰 힘이 됩니다^^!
담당디자이너:
시술메뉴:
만족도(10점 만점):
총평:
		</textarea>
	</p>
	<br>
	<p>
		<label>사진</label>
		<input type="file" name="rFile">	
	</p>
	<br>
	<p id="button">
		<input type="reset" value="취소">
		<input type="submit" value="등록">
	</p>
	</form>

</section>
<%@ include file="../../include/footer.jsp" %>