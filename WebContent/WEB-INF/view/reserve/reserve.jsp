<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../include/header.jsp"%>
<style>
	section ul li{
		
	}
</style>
<section>
	<c:forEach var="list" items="${dList}">
		<ul>
			<li>${list.dName }</li>
		</ul>
		
	</c:forEach>


</section>




<%@ include file="../../include/footer.jsp"%>
