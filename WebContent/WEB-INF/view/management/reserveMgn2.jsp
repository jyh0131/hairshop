<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
<style>
	section {
		width: 1050px;
		margin: 0 auto;
		padding: 30px 40px;
		background: #ebebeb;
	}
	section h1#title{
		text-align: center;
		margin-bottom:20px; 
	}
</style>
<section>
	<h1 id="title">예약관리</h1>
	
	
	<article>
		<h1>디자이너 선택</h1>
		<ul id="designer">
			<c:forEach var="list" items="${dList}">
				<li>${list.dName } ${list.dGrade }</li>
			</c:forEach>
		</ul>
	</article>
	
	<article id="reserve">
	
		<table id="reserved" class="table table-bordered">
		<thead>
			<tr>
				<th>예약일시</th>
				<th>손님명</th>
				<th>손님전화번호</th>
				<th>손님등급</th>
				<th>작업명</th>
				<th>이벤트</th>
				<th>가격</th>
				<th>완료일시</th>
				<th></th>
			</tr>
		</thead>
			<tbody>
				
			</tbody>
		</table>
	</article>

</section>

<%@ include file="../../include/footer.jsp"%>