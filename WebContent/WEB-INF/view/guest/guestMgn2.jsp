<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>


<table id="example" class="table table-bordered">

  <thead>

    <tr>

    		<th>번호</th>
			<th>등급</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>생일</th>
			<th>가입일</th>
			<th>포인트</th>
			<th>메모</th>
			<th></th>

    </tr>

  </thead>

  <tbody>

    <c:forEach var="i" items="${list }">
			<tr>
				<td id="no">
					${i.gNo }
				</td>
				
				<td>
					${i.gLGrade }
				</td>
				
				<td>
					${i.gName }
				</td>
				
				<td>
					${i.gTel }
				</td>
				
				<td>
					${i.gEmail }
				</td>
				
				<td>
					<fmt:formatDate value="${i.gBirth }" pattern="yyyy년 MM월 dd일"/> 
				</td>
				
				<td>
					<fmt:formatDate value="${i.gJoin }" pattern="yyyy년 MM월 dd일"/> 
				</td>
				
				<td>
					${i.gPoint }
				</td>
				
				<td>
					${i.gMemo }
				</td>
				
				<td>
					<button>수정</button>
					<a href="" class="delete">삭제</a>
				</td>
			</tr>
		</c:forEach>

  </tbody>

</table>

<script>
$("#example").DataTable({ });


$(document).on("click",".delete",function(){
	var result = confirm("정말 삭제하시겠습니까?");
	
	if(result == true) {
		var gNo = $(this).parent().parent().find("#no").text().trim();
		location.href="${pageContext.request.contextPath}/guest/guestDelete.do?gNo="+gNo;
	}
	return false;
})
</script>



