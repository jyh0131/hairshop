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
		margin-top: 40px;
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
		color:#ccc;
	}
	
	#example_length, #example_info{
		display: none;
	}
	#example_wrapper{ 
		position: relative;
	}
	#example_filter{  /* 검색창 */
		position: absolute;
		bottom:-100px;
		left:800px;
	}
	#example_paginate{ /* 페이지표시 */
		position: absolute;
		bottom:-50px;
		left:800px;
	}
	#write{
		position: absolute;
		bottom:310px;
		right:600px;
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
    <c:forEach var="review" items="${list }">
			<tr>
				<td id="no">
					${review.rNo}
				</td>
				<td>
					<a href="">${review.rTitle }</a>
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
	<div id="write">
		<a href="${pageContext.request.contextPath}/review/insert.do">[글쓰기]</a>
	</div>	
</section>




