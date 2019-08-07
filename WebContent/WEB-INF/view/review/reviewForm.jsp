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
		width: 50%;
		margin: 0 auto;
		padding-top: 40px;
	}
	
</style>
<section>
	<form action="${pageContext.request.contextPath}/review.do" method="post">
	<p>
		<label>이름</label>
		<input type="text" name="rWriter">	
	</p>
	<p>
		<label>제목</label>
		<input type="text" name="rTitle">	
	</p>
	<p>
		<label>내용</label>
		<input type="text" name="rContent" value="차홍아르더를 이용해 주셔서 감사드립니다. 고객님의 한 줄 리뷰가 저희들에게 큰 힘이 됩니다!<br>
		담당디자이너:<br>시술메뉴:<br>만족도(10점 만점):<br>총평:<br>">	
	</p>
	<p>
		<label>사진</label>
		<input type="text" name="rFile">	
	</p>
	<p>
		<input type="reset" value="취소">
		<input type="submit" value="등록">
	</p>
	</form>

</section>
<%@ include file="../../include/footer.jsp" %>