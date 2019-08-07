<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%@ include file="../../include/header.jsp" %>
<style>
	*{
		padding:0;
		margin:0;
	}
	section{
		width: 100%;
		margin:0 auto;
		padding-top: 40px;
	}
	table, td{
		border:1px solid black;
	}
</style>
<section>

	<table>
		<tr>
			<td>번호</td>
			<td>글제목</td>
			<td>글쓴이</td>
			<td>작성일</td>
		</tr>
		<c:forEach var="review" items="${list}">
			<tr>
				<td>${review.rNo}</td>
				<td>${review.rTitle }</td>
				<td>${review.rWriter }</td>
				<fmt:formatDate var="resultRegDt" value="${review.rWritetime}" pattern="yyyy.MM.dd"/>
				<td>${resultRegDt}</td>
			</tr>
		</c:forEach>
	
		
		
		
		
		
		
		
	</table>



</section>
<%@ include file="../../include/footer.jsp" %>