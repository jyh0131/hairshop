<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	
	div#eventDiv{
		font-size: 11px;
		width:95%;
		height:200px;
		padding:5%;
		text-align: center;
		
		overflow: auto;
		-ms-overflow-style: none;
	}
	div#eventDiv table{
		width:90%;
	}
	::-webkit-scrollbar {
		display:none;
	}
	
	
	div#eventDiv table tr th{
		font-weight: bold;
		width:24%;
		height: 20px;
	}
	div#eventDiv table tr td{
		text-align: center;
		height: 20px;
	}
</style>
<h2>이벤트</h2>
<div id="eventDiv">
	
	<div id="table">
		<table>
			<tr>
				<th>이벤트명</th>
				<th>시작날짜</th>
				<th>끝날짜</th>
				<th>할인율</th>
			</tr>
			<c:forEach var="e" items="${eList }" >
				<tr>
					<td>${e.eName }</td>
					<td><fmt:formatDate value="${e.eStartDay }" pattern="yy-MM-dd"/></td>
					<td><fmt:formatDate value="${e.eEndDay }" pattern="yy-MM-dd"/> </td>
					<td>${e.eSale }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>