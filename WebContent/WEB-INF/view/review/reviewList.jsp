<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
<style>
	*{
		padding: 0;
		margin: 0;
	}
	a{
		text-decoration: none;
		color: black;
	}
	section{
		margin-top: 70px;
		width: 100%;
		height: 600px;
	}
	#example{
		width: 800px;
		text-align: center;
	}
	#example td:nth-child(2){
		text-align: left;
	}
	#example th{
		font-size: 13px;
		color:#353535;
	}
	#example_info{
		display: none;
	} 
	#yellow{
		width: 100%;
		height: 20px;
		position: relative;
		/* background-color: yellow; */
	}
	#example_filter{  /* 검색창 */
		position: absolute;
		bottom:-40px;
		left:580px;
	}
	#example_paginate{ /* 페이지표시 */
		position: absolute;
		bottom:-50px;
		right:550px;
	}
	#write{ /* 글쓰기 */
		position: absolute;
		top:235px;
		right:590px;
		
	}
	#write a{
		text-decoration: none;
		border:1px solid #ccc;
		width: 60px;
		height: 30px;
		background-color:#F6F6F6;
		border: 1px solid #ccc;
		font-size: 13px;
		padding:5px 10px;
	}
	#reviewtitle #rtitle:hover{
		text-decoration: underline;
		color:#5D5D5D;
	}
	
</style>
<section>
<div id="yellow"></div>
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
<%--   ${list } --%>
    <c:forEach var="review" items="${list }">
			<tr>
				<td id="no">
					${review.rNo}
				</td>
				<td id="reviewtitle">
					<a href="${pageContext.request.contextPath}/review/detail.do?no=${review.rNo}"><span id="rtitle">${review.rTitle }</span></a>
				</td>
				<td>
					${review.rWriter }
				</td>
				<td>
				<fmt:formatDate var="resultRegDt" value="${review.rWritetime}" pattern="yyyy.MM.dd"/>
				${resultRegDt}					
				</td>
			</tr>
		</c:forEach>
  </tbody>
</table>
	<c:if test="${Auth != null}"><!-- 비회원일시에 글쓰기 할수 없음 -->
		<div id="write">
			<a href="${pageContext.request.contextPath}/review/insert.do">글쓰기</a>
		</div>	
	</c:if>
</section>
<script>


$("#example").DataTable({
	lengthChange:false,
	ordering:false,
	stateSave:true,
	
	
});

</script>

<%@ include file="../../include/footer.jsp" %>
