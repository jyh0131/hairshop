<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css"/>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript" ></script>
<style>
	section{
		position: relative;
	}
	div#board{
		width:90%;
		height:80%;
		height:200px;
		padding:5%;
		text-align: center;
		
		overflow: auto;
		-ms-overflow-style: none;
	}
	
	
	
	::-webkit-scrollbar {
		display:none;
	}
	div#board table{
		width:95%;
	}
	div#board input{
		width:50px;
	}
	div#board a{
		color: black;
		text-decoration: none;
	}
	#write a{
		color:black;
		text-decoration: none;
	}
	#write{
		position: absolute;
		right:5px;
		top:0;
		font-size: 15px;
	}

	h2{
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
		margin-top:10px;
	}
	div#board #example tr td a:hover{
		font-size: 15px;
	}
	div#board #example tr td{
		font-size: 11px;
		height: 20px;
	}
	div#board #example tr th{
		font-size: 11px;
		text-align: center;
		margin-bottom:10px;
		font-weight: bold;
		height: 20px;
	}

	div#board #example tr td:first-child {
		width:65%;
	}
	div#board #example tr td:last-child {
		text-align: center;
	}
	div#board #example tr th:last-child {
		width:30%;
	}
	div#board #example tr th:first-child {
		text-align: left;
	}
	
</style>
<script>
/* 	$(document).ready(function(){
	    $('#example').dataTable({
	        pageLength: 3,
	        bPaginate: true,
	        bLengthChange: true,
	        lengthMenu : [ [ 3, 5, 10, -1 ], [ 3, 5, 10, "All" ] ],
	        bAutoWidth: false,
	        processing: true,
	        ordering: true,
	        serverSide: false,
	        searching: false,
	    });
	
	}); */
	
	
</script>
<section>
	<h2>공지사항</h2>
		<c:if test="${Auth.uIsMgr==true }">
		<div id="write">
			<a href="${pageContext.request.contextPath}/board/managerInsert.do">[글쓰기]</a>
		</div>
	</c:if>
	
<div id="board">	
	<table id="example" class="table table-bordered">
			<tr>
				<th>글제목</th>
				<th>작성일</th>
			</tr>
		<tbody>
			<c:forEach var="review" items="${bList }"  step="1" varStatus="i">
				<tr>
					<td>
					<a href="${pageContext.request.contextPath}/board/managerDetail.do?no=${review.rNo}">${review.rTitle }</a>
					</td>
					<td><fmt:formatDate var="resultRegDt" value="${review.rWritetime}" pattern="yyyy.MM.dd" />${resultRegDt}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	
</div>

</section>