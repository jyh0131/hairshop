<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#guestChange{
	width:800px;
	height:400px;
	margin: 0 auto;
	margin-top: 60px;
	margin-bottom: 60px;
}
#guestChange h3{
	margin: 10px;
}
#guestChange #ggChange .ggC{
	margin: 5px;
	width: 120px;
	height: 30px;
}
#guestChange #ddChange table{
	border-collapse: collapse;
	text-align: center;
}
#guestChange #ddChange table button{
	width: 50px;
}
#guestChange #ddChange table th, tr, td{
	border: 1px solid #ddd;
}
#guestChange #ddChange table th:nth-child(1) {
	width: 120px;
}
#guestChange #ddChange table th:nth-child(2) {
	width: 120px;
}
#guestChange #ddChange table th:nth-child(3) {
	width: 120px;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function () {
		$("#ggBtn").click(function() {
			$.ajax({
				url:"${pageContext.request.contextPath}/member/guestSelcet.do",
				type:"post",
				data:{"name" : $("#name").val() },
				dataType:"json",
				success:function(list){
					console.log(list);
					$("#ggList").append("<option>검색되었습니다</option>");
					$("#ggList option").remove();
					$.each(list, function (i, guest) {
						$("#ggList").append("<option  value='"+guest.gLGrade.lGrade+"'>"+guest.gName+"("+guest.gId+")</option>");
					})
					
				}
			})
		})		
	})
	
	
	$(document).ready(function() {

		$("#ggChangeBtn").click(function () {
			$.ajax({
				url:"${pageContext.request.contextPath}/member/guestToDesignerModify.do",
				type:"post",
				data:{"nameId" : $("#ggList option:selected").text()},
				dataType:"json",
				success:function(data){
					if(data==2){
						alert("승급하였습니다");
					}else{
						alert("정상적으로 작업되지 않았습니다.");
					}
				}
			})
		});
		
		
		$(".delBtn").click(function() {
			var del = confirm("삭제 하시겠습니까?");
			
			var $this = $(this).parent().parent();
			
			if (del == false) {
				alert("취소 하였습니다");
			} else {
				
				$.ajax({
					url:"${pageContext.request.contextPath}/member/designerDel.do",
					type:"post",
					data:{"id" : $(this).prev().prev().val() },
					dataType:"json",
					success:function(data){
						if(data==1){
							$this.remove();
							
							alert("변경하였습니다");
						}else{
							alert("잠시 후 다시 시도 하세요");
						}
					}
				})
			}
		})
		
	});
	
</script>


<section id="guestChange">

	<div id="gTodChange"> <!-- 게스트를 디자이너로 등급 변경 -->
		<h3>회원을 직원으로 승급</h3>
		<input type="text" id="name" class="ggC" placeholder="이름 검색"><button id="ggBtn" class="ggC">검색</button>
		<br><br>
		<div id="ggResult">
			<!-- 검색결과가 출력 -->
			<select id="ggList" class="ggC"></select>
			<button id="ggChangeBtn" class="ggC">디자이너로 변경</button>
		</div>
		
	</div>

	<br><hr><br>

	<div id="ddChange"> <!-- 디자이너 등급변경 -->
		<h3>디자이너 상태 변경</h3>
		<div id="ddResult">
			<table>
				<tr>
					<th>이름</th>
					<th>직책</th>
					<th></th>
				</tr>
				
				<c:forEach var="designer" items="${dList }">
				<tr>
					<td>${designer.dName}</td>
					<td>${designer.dGrade}</td>
					<td>
						<input type="hidden" value="${designer.dId }" class="dId">
						<button class="downBtn">강 등</button>
						<button class="delBtn">삭 제</button>
					</td>
				</tr>
				</c:forEach>						
				
			</table>
		</div>



	</div>




</section>






<%@ include file="../../include/footer.jsp" %>