<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp"%>
<style>
section {
	padding: 30px 40px;
	background: #ebebeb;
}
</style>
<section>
	<div id="designerList">
		<h1 id="title">예약하기</h1>
		<ul id="designer">

			<c:forEach var="list" items="${dList}">
				<li>${list.dName }${list.dGrade }</li>
			</c:forEach>
		</ul>
	</div>


	<c:forEach var="w" items="${wList}">

	</c:forEach>
</section>
<%@ include file="../../include/footer.jsp"%>