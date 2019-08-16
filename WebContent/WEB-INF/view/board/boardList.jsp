<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ include file="../../include/header.jsp" %>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
<style>
	
	a{
		text-decoration: none;
		color: black;
	}
	section{
		margin:0 auto;
		clear:both;
		margin-top: 40px;
		width: 800px;
		height: 600px;
	}
	#example{
		width: 800px;
		text-align: center;
		/* min-heigh:409px; */
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
	#example_wrapper{ 
	}
	#example_filter{  /* 검색창 */
	}
	#example_paginate{ /* 페이지표시 */
	}
	#write{
		float: right;
		
		
	}
	#write a{
		text-decoration: none;
		border:1px solid #ccc;
		width: 60px;
		height: 30px;
		background-color: white;
		border: 1px solid #ccc;
		font-size: 13px;
		padding:5px 10px;
	}
</style>
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
<%--   ${list } --%>
    <c:forEach var="review" items="${bList }" varStatus="i" step="1">
			<tr>
				<td id="no">
					${fn:length(bList)-i.index}
				</td>
				<td>
					<a href="${pageContext.request.contextPath}/board/managerDetail.do?no=${review.rNo}">${review.rTitle }</a>
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
  <tfoot>
 
  </tfoot>

</table>
	<c:if test="${Auth.uIsMgr==true }">
		<div id="write">
			<a href="${pageContext.request.contextPath}/board/managerInsert.do">글쓰기</a>
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
