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
					$.each(list, function (i, guest) {
						$("#ggList").append("<option>"+guest.gName+"("+guest.gId+")</option>");
					})
					

				
				
				}
			})
		})		
	})

</script>


<section id="gradeChange">

	<div id="ggChange">
		<input type="text" id="name"><button id="ggBtn">검색</button>
		
		<div id="ggResult">
			<select id="ggList">
				
			</select>
		</div>
		
	</div>
	
	<div id="ddChange"></div>




</section>






<%@ include file="../../include/footer.jsp" %>