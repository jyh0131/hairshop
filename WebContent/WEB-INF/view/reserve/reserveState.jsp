<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
@media screen and (min-width:1200px){
#reservState{
	width:1080px;
	height:600px;
	margin: 0 auto;
	text-align: center;
}
#reservState h1{
	margin: 15px;
	margin-bottom: 30px; 
	margin-top: 15px;
}
#reservState table{
	border-collapse: collapse;
	margin: 0 auto;
}
#reservState table th, td, tr{
	border: 1px solid #ddd;
	height: 40px;
}
#reservState table th:nth-child(1) {
	width: 210px;
}
#reservState table th:nth-child(2) {
	width: 100px;
}
#reservState table th:nth-child(3) {
	width: 120px;
}
#reservState table th:nth-child(4) {
	width: 120px;
}
#reservState table th:nth-child(5) {
	width: 200px;
}

#reservState p{
	width:756px;
	text-align: left;
	margin: 0 auto;
	margin-top: 20px;
}
#reservState p a{
	text-decoration: none;
	font-size: 15px;
	color: black;
}
}


@media all and (max-width:1199px){
#reservState{
	width:100%;
	margin: 0 auto;
	text-align: center;
}
#reservState h1{
	margin: 10px;
	margin-bottom: 30px; 
	margin-top: 20px;
}
#reservState table{
	border-collapse: collapse;
	margin: 0 auto;
	font-size: 13px;
}
#reservState table th, td, tr{
	border: 1px solid #ddd;
	height: 40px;
}

#reservState table th:nth-child(1) {
	width: 200px;
}
#reservState table th:nth-child(5) {
	width: 150px;
}
#reservState table th:nth-child(2) {
	display: none;
}
#reservState table th:nth-child(3) {
	display: none;
}
#reservState table th:nth-child(4) {
	display: none;
}

#reservState table td:nth-child(2) {
	display: none;
}
#reservState table td:nth-child(3) {
	display: none;
}
#reservState table td:nth-child(4) {
	display: none;
}




#reservState table th:nth-child(5) {
	
}

}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script></script>

<section id="reservState">


	<div id="lookback">
		<h1>이전 작업</h1>
		<table>
			<tr>
				<th>작업일시</th>
				<th>가격</th>
				<th>디자이너 이름</th>
				<th>디자이너 등급</th>
				<th>작업명</th>
			</tr>
						
			<c:forEach var="w" items="${lookback }">
				<tr>
					<%-- <td>${w.wNo}</td> --%>
					<td><fmt:formatDate value="${w.wWorkTime}" pattern="yy년 MM월 dd일 hh시 mm분"/></td>
 					<td>${w.wPriceTotal}</td>
 					<td>${w.wDNo.dName}</td>
 					<td>${w.wDNo.dGrade}</td>
 					<td>${w.productList}</td>
					</tr>
			</c:forEach>
				
		</table>
	</div>

	<div id="lookAhead">
		<h1>예정된 작업</h1>
		<table>
			<tr>
				<th>예약일시</th>
				<th>가격</th>
				<th>디자이너 이름</th>
				<th>디자이너 등급</th>
				<th>작업명</th>
			</tr>
			<c:forEach var="w" items="${lookAhead }">
				<tr>
					<td><fmt:formatDate value="${w.wReserveTime}" pattern="yy년 MM월 dd일 hh시 mm분"/></td>
					<td>${w.wPriceTotal}</td>
					<td>${w.wDNo.dName}</td>
					<td>${w.wDNo.dGrade}</td>
					<td>${w.productList}</td>
				</tr>
			</c:forEach>
		</table>
		<p><a href="${pageContext.request.contextPath}/member/mypage.do">mypage로 돌아가기</a></p>
	</div>

	


</section>
<%@ include file="../../include/footer.jsp" %>










