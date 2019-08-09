<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
<style>
	#sectable{
		width:1250px;
		margin:0 auto;
		margin-top:20px;
	}
	
	
	th,td{
		text-align:center;
		border: 1px solid gray;
		border-top: 2px solid gray;
	}
	
	
	div#updatePageBlack{
	z-index:100;
	position:fixed;
	left:0;
	top:0;
	width:100%;
	height: 100%;
	background: rgba(0,0,0,0.5);
	padding:100px 20%;
	display: none;
}
div#updatePageBlack div#updatePage{
	padding:60px;
	width:30%;
	height: 500px;
	background: white;
	margin-left: 200px;
	margin-top: 100px;
}
div#updatePageBlack div#updatePage label{
	float: left;
	width:120px;
}
div#updatePageBlack div#updatePage fieldset{
	border-radius: 50px;
	padding:100px;
	padding-right:0px;
	position: relative;
}
div#updatePageBlack div#updatePage img#x{
	cursor:pointer;
	top:20px;
	right:20px;
	width:35px;
	height:35px;
	position: absolute;
}
div#updatePage h1#title{
	margin-bottom: 50px;
}
#uppName span{
	position: relative;
	padding-right: 20px;
}
#uppName img{
	cursor:pointer;
	position:absolute;
	top:5px;
	right:10;
	width:15px;
	height: 15px;
}

div#updatePageBlack select{
	height: 25px;
}

#sectable #example th:nth-child(1) {
	width: 33px;
}

#sectable #example th:nth-child(2) {
	width: 33px;
}

#sectable #example th:nth-child(3) {
	width: 33px;
}
#sectable #example th:nth-child(4) {
	width: 100px;
}
#sectable #example th:nth-child(5) {
	width: 100px;
} 
#sectable #example th:nth-child(6) {
	width: 130px;
}
#sectable #example th:nth-child(7) {
	width: 130px;
} 
#sectable #example th:nth-child(8) {
	width: 48px;
} 
#sectable #example th:nth-child(9) {
	width: 120px;
} 
#sectable #example th:nth-child(10) {
	width: 30px;
}  
</style>
<section id="sectable">
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
					<button class="update">수정</button>
					<button class="delete">삭제</button>
				</td>
			</tr>
		</c:forEach>

  </tbody>

</table>
</section>
<script>
$("#example").DataTable({ });

$(function() {
	$(document).on("click",".update",function(){
		var gNo = $(this).parent().parent().find("#no").text().trim();
		alert(gNo);
		if($(this).text()=='수정'){
			$("#updatePageBlack").fadeIn(500);
			$.ajax({
				url : "${pageContext.request.contextPath }/guest/guestUpdate.do",
				type : "get",
				data : {
					"gNo":gNo,
				},
				dataType : "json",
				success : function(json) {
					console.log(json);
					$("#f1").append("<input type='hidden' name='gNo' value='"+json.gNo+"'>");
			
					if(json.gLGrade==null){
						$("#gLGrade").val("일반");
					}else{
						$("#gLGrade").val(json.gLGrade.lGrade);
					}
					
					$("#gName").val(json.gName);
					$("#gTel").val(json.gTel);
					$("#gEmail").val(json.gEmail);
					$("#gBirth").val(new Date(json.gBirth).format("yyyy-MM-dd"));
					$("#gJoin").val(new Date(json.gJoin).format("yyyy-MM-dd"));
					$("#gPoint").val(json.gPoint);
					$("#gMemo").val(json.gMemo);
				}
				
			})
			
		}
		
	})
	
	$(document).on("click","#x",function(){
		$("#updatePageBlack").fadeOut(500);
	})
})


$(document).on("click",".delete",function(){
	var result = confirm("정말 삭제하시겠습니까?");
	
	if(result == true) {
		var gNo = $(this).parent().parent().find("#no").text().trim();
		location.href="${pageContext.request.contextPath}/guest/guestDelete.do?gNo="+gNo;
	}
	return false;
})


</script>


<script src="${pageContext.request.contextPath}/js/boodal.min.js"></script>

<div id="updatePageBlack">
	<div id="updatePage">
		<fieldset>
			<img id="x" src="${pageContext.request.contextPath }/images/reserve/x3.jpg">
			<h1 id="title">회원 수정</h1>
			<form name="f1" id="f1">
			
			<label>등급 : </label>
			<select name="gLGrade" id="gLGrade">
				<option>일반</option>
				<c:forEach var="l" items="${lList}">
					<option>${l.lGrade}</option>
				</c:forEach>
			</select><br>
			<label>이름 : </label><input type="text" name="gName" id="gName"><br>
			<label>전화번호 : </label><input type="tel" name="gTel" id="gTel"><br>
			<label>이메일 : </label><input type="text" name="gEmail" id="gEmail"><br> 
			<label>생일 : </label><input type="date" name="gBirth" id="gBirth"><br>
			<label>가입일 : </label><input type="date" name="gJoin" id="gJoin"><br>
			<label>포인트 : </label><input type="number" name="gPoint" id="gPoint"><br> 
			<label>메모 : </label><input type="text" name="gMemo" id="gMemo"><br> 
			  
			
			  
			<input type="submit" value="수정">
			</form>
		</fieldset>
	</div>
</div>

<script>
$("#f1").submit(function() {
	var queryString = $("#f1").serialize();
	console.log(queryString);
	$.ajax({
        type : 'post',
        url : '${pageContext.request.contextPath }/guest/guestUpdate.do',
        data : $("#f1").serialize(),
        dataType : 'json',
        success : function(json){
        	$("#updatePageBlack").fadeOut(300);
        },
    });

	return "${pageContext.request.contextPath }/guest/guestList.do";
})
</script>


<%@ include file="../../include/footer.jsp"%>
