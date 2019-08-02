<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp"%>
<style>
section {
	width: 1050px;
	margin: 0 auto;
}

section ul {
	list-style: none;
}

section ul li {
	line-height: 50px;
	width: 150px;
	height: 50px;
	text-align: center;
	float: left;
	background: #f5f5f5;
	margin: 2px;
	border: 1px solid #dddddd;
	cursor: pointer;
}

section article#border {
	clear: both;
	background: #ebebeb;
	padding: 25px;
	padding-left: 100px;
	padding-right: 100px;
}

section article#border div#form {
	background: white;
	padding:20px;
}
section article#border div#form div#calendar{
	width: 450px;
}
section article#border div#form div#calendar table{
	border-collapse: collapse;
	width:450px;
}
section article#border div#form div#calendar h1 {
	background:#e9e9e9;
	font-size: 30px;
	text-align: center;
	margin-top:10px;
	margin-bottom:10px;
	position: relative;
}
section article#border div#form div#calendar img#left {
	position: absolute;
	top:0px;
	left:0px;
}
section article#border div#form div#calendar img#right {
	top:0px;
	rigth:0px;
	position: absolute;
}
section article#border div#form div#calendar img {
	width: 20px;
	height: 20px;
}
section article#border div#form div#calendar tr#date{
	
}
section article#border div#form div#calendar td.day{
	cursor: pointer;
}
section article#border div#form div#calendar td{
	text-align: center;
	width:60px;
	height: 20px;
	margin: 2px;
}


</style>
<script type="text/javascript">
	var designer="";
	function calendar(year, month) {
		var y = year;
		var m = month;
		var t = new Date(y, m, 1);
		var lastArray = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
		var count = 1;

		var calendar = "<h1><img id='left' src='${pageContext.request.contextPath }/images/reserve/left.png'>"
				+ t.getFullYear()
				+ "."
				+ (t.getMonth() + 1)
				+ "<img id='right' src='${pageContext.request.contextPath }/images/reserve/right.png'></h1><table  id='calendar' border='1'>";

		calendar += "<tr id='date'>";
		calendar += "<td>일</td>";
		calendar += "<td>월</td>";
		calendar += "<td>화</td>";
		calendar += "<td>수</td>";
		calendar += "<td>목</td>";
		calendar += "<td>금</td>";
		calendar += "<td>토</td>";
		calendar += "</tr>";

		calendar += "<tr>";
		for (var j = 0; j < t.getDay(); j++) {
			calendar += "<td></td>";
		}
		for (var i = t.getDay(); i < t.getDay() + lastArray[t.getMonth()]; i++) {

			if (i % 7 == 0)
				calendar += "</tr><tr>"
			calendar += "<td class='day'>" + count + "</td>";
			count++;
		}
		calendar += "</tr></table>";
		$("#calendar").html(calendar);
	}
   
	$(function() {
		var date = new Date();
		calendar(date.getFullYear(), date.getMonth());
		
		$(document).on('click','#left',function() {
			var str=$("#calendar h1").text();
			var year=str.slice(0,4);
			var month=str.slice(str.indexOf(".")+1);
			calendar(year,month-2);
			       
		})
		$(document).on('click','#right',function() {
			var str=$("#calendar h1").text();
			var year=str.slice(0,4);
			var month=str.slice(str.indexOf(".")+1);
			console.log(year);
			console.log(month);
			calendar(year,month);
		})
		
		
		$(document).on('click',".day",function(){
			$(".day").css('background-color','white');
			$(this).css('background-color','#fcfc90');
			var str=$("#calendar h1").text();
			var year=str.slice(0,4);
			var day=$(this).text();
			
			$.ajax({
				url:"${pageContext.request.contextPath }/reserve/designerChange.do",
				type:"get",
				data:{"pNo":pNo,"count":count},
				dataType:"json",
				success:function(json){
					console.log(json)
					if(json.success==true){
						alert("장바구니에 담았습니다.");
					}else{
						alert("장바구니에 담을수 없습니다.");
					}
				}
			})
			
		})
		
	})
</script>
<section>
	<h1>예약하기</h1>
	<c:forEach var="list" items="${dList}">
		<ul>
			<li>${list.dName }</li>
		</ul>
	</c:forEach>
	<article id="border">
		<div id="form">
			
			<h3>날짜 선택</h3>
			<div id="calendar">
			</div>
		</div>

	</article>

</section>


<%@ include file="../../include/footer.jsp"%>
