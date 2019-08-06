<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<style>
#gradeChange{
	width:800px;
	height:400px;
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 30px;
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
		
		$("#ggList").change(function() {
			var index = $(this).children('option:selected').index();
			var a = $(this).val();
			console.log(a);
			$("#nowGrade").val(a).attr("selected","selected");
		});
		
		
		$("#ggChangeBtn").click(function () {
			$.ajax({
				url:"${pageContext.request.contextPath}/member/guestGradeModify.do",
				type:"post",
				data:{"nameId" : $("#ggList option:selected").text(),
					  "grade" : $("#nowGrade").val() },
				dataType:"json",
				success:function(data){
					if(data==1){
						alert("등급을 변경하였습니다");						
					}else{
						alert("잠시 후 다시 시도 하세요");
					}
				}
			})
		});
		
	});
	
</script>


<section id="gradeChange">

	<div id="ggChange"> <!-- 게스트 등급 변경 -->
		<h3>회원등급 변경</h3>
		<input type="text" id="name"><button id="ggBtn">검색</button>
		
		<div id="ggResult">
			<select id="ggList"></select>
			
			<select id="nowGrade">
				<c:forEach var="level" items="${lList }">
					<option>${level.lGrade }</option>
				</c:forEach>		
			</select>
		
			<button id="ggChangeBtn">검색</button>
		</div>
		
	</div>
	<br>
	<hr>
	<br>
	<div id="ddChange"> <!-- 디자이너 등급변경 -->
		<h3>디자이너 직책 변경</h3>
		<input type="text" id="name"><button id="ddBtn">검색</button>

		<div id="ddResult">
			<select id="ddList"></select>
			
			<select id="nowTitle">
				<c:forEach var="level" items="${lList }">
					<option>${level.lGrade }</option>
				</c:forEach>		
			</select>
		
			<button id="ddChangeBtn">검색</button>
		</div>



	</div>




</section>






<%@ include file="../../include/footer.jsp" %>