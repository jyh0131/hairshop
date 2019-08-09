<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../include/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css" />
<script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>

<section>
	<table id="example" class="table table-bordered">
		<thead>
			<tr>
				<th>번호</th>
				<th>글제목</th>
				<th>글쓴이</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="review" items="${bList }">
				<tr>
					<td id="no">${review.rNo}</td>
					<td><a href="">${review.rTitle }</a></td>
					<td>${review.rWriter }</td>
					<td><fmt:formatDate var="resultRegDt" value="${review.rWritetime}" pattern="yyyy.MM.dd" />${resultRegDt}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<div id="write">
		<a href="${pageContext.request.contextPath}/review/insert.do">[글쓰기]</a>
	</div>
</section>
<script>
	$("#example").DataTable({});
</script>
</section>