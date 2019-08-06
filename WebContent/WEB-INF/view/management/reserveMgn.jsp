<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$( function() {
	    $( "#datepicker" ).datepicker();
	});
</script>
<style>
section {
	width: 1050px;
	margin: 0 auto;
	padding: 30px 40px;
	background: #ebebeb;
}

section h1#title{
	text-align: center;
	margin-bottom:20px; 
}
section article{
	clear:both;
	width:990px;
	background: white;
	padding: 30px;
	margin-bottom: 30px;
}
section ul#designer {
	display: block;
	width:100%;
	height:100px;
	list-style: none;
}

section ul#designer li {
	line-height: 50px;
	width: 140px;
	height: 50px;
	text-align: center;
	float: left;
	background: #f5f5f5;
	margin: 2px;
	border: 1px solid #dddddd;
	cursor: pointer;
	background: #f5f5f5;
}
section div#calendar {
	width: 450px;
}

section div#form div#calendar table {
	border-collapse: collapse;
	width: 450px;
}

section div#calendar h1 {
	background: #e9e9e9;
	font-size: 30px;
	text-align: center;
	width:444.44px;
	margin-top: 10px;
	margin-bottom: 10px;
	position: relative;
}

section div#calendar img#left {
	position: absolute;
	top: 10px;
	left: 10px;
}

section div#calendar img#right {
	top: 10px;
	right: 10px;
	position: absolute;
}

section div#calendar img {
	width: 20px;
	height: 20px;
}
section td {
	text-align: center;
	width: 60px;
	height: 30px;
	line-height: 30px;
}

section div#calendar td.day {
	cursor: pointer;
}

section table#reserved{
	border-collapse: collapse;
}
section table#reserved tr td,section table#reserved tr th{
	border: 1px solid black;
}
section table#reserved tr th{
	width:130px;
}
section table#reserved tr th:nth-child(1) {
	width:100px;
}
section table#reserved tr th:nth-child(4) {
	width:80px !important;
}

section table#reserved tr th:nth-child(6) {
	width:100px !important;
}
section table#reserved tr th:nth-child(8) {
	width:100px !important;
}

section table#reserved tr th:last-child {
	width:80px !important;
}

section article#reserve h1 span{
	color: blue;
}

div#updatePageBlack{
	z-index:100;
	position:fixed;
	left:0;
	top:0;
	width:100%;
	height: 100%;
	background: rgba(0,0,0,0.5);
	padding:100px 400px;
	display: none;
}
div#updatePageBlack div#updatePage{
	padding:100px;
	width:55%;
	height: 50%;
	background: white;
	
}
div#updatePageBlack div#updatePage label{
	float: left;
	width:120px;
}
div#updatePageBlack div#updatePage fieldset{
	border-radius: 50px;
	padding:100px;
	position: relative;
}
div#updatePageBlack div#updatePage img#x{
	top:20px;
	right:20px;
	width:35px;
	height:35px;
	position: absolute;
}

</style>
<script>
	var designer = "";
	var date="";
	var time="";

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
		
		$(document).on('click', '#left', function() {
			var str = $("#calendar h1").text();
			var year = str.slice(0, 4);
			var month = str.slice(str.indexOf(".") + 1);
			calendar(year, month - 2);

		})
		$(document).on('click', '#right', function() {
			var str = $("#calendar h1").text();
			var year = str.slice(0, 4);
			var month = str.slice(str.indexOf(".") + 1);
			console.log(year);
			console.log(month);
			calendar(year, month);
		})

		$(document).on('click',".day",function() {
			$(".day").css('background-color', 'white');
			$(this).css('background-color', '#fcfc90');
			var str = $("#calendar h1").text();
			var year = str.slice(0, 4);
			var month = str.slice(str.indexOf(".")+1,str.length);
			var day = $(this).text();
			date=year+"-"+month+"-"+day;
			$("#reserveDate").text(year+"년 "+month+"월 "+day+"일 ");
			$("#time tr td").removeClass("reserved");
			$("table#reserved td").remove();
			$.ajax({  
				url : "${pageContext.request.contextPath }/reserve/designerChange.do",
				type : "get",
				data : {
							"date":date,
							"designer":designer
						},
				dataType : "json",
				success : function(json) {
					console.log(json)
					if(json.wListMap.length>0){
						for(var i=0; i<json.wListMap.length; i++){
							var work=json.wListMap[i];
							var str="<tr>";
							str+="<td id='reserveTime'>"+new Date(work.wReserveTime).format('yyyy-MM-dd a/p hh:mm')+"</td>";
							str+="<td id='gName'>"+work.wGNo.gName+"</td>";
							str+="<td id='gTel'>"+work.wGNo.gTel+"</td>";
							if(work.wGNo.gLGrade!=null){
								str+="<td>"+work.wGNo.gLGrade.lGrade+"</td>";
							}
							else{
								str+="<td>일반</td>";
							}
							var product="";
							for(var j=0; j<work.productList.length; j++){
								if(j==work.productList.length-1)
									product+=work.productList[j].pName;
								else
									product+=work.productList[j].pName+",";
							}
							str+="<td>"+product+"</td>";
							str+="<td>"+work.wEName.eName+"</td>";
							str+="<td>"+work.wPriceTotal.toLocaleString()+"원</td>"
							if(work.wWorkTime==null){
								str+="<td>작업전</td>"
							}else{
								str+="<td>"+new Date(work.wWorkTime).format('yyyy-MM-dd a/p hh:mm')+"</td>"
							}
							str+="<td><button>수정</button><button>삭제</button><input id='hidden' type='hidden' value='"+work.wNo+"'/></td>";
							str+="</tr>";
							$("table#reserved").append(str);
						}
					}else{
						$("table#reserved").append("<tr><td colspan='9'>예약이 하나도없네요ㅋㅋㅋㅋ</td></tr>")
					}
				}
			})

		})
		
		$("#designer li").click(function() {
			$("#commit").text("예약신청");
			$("#reserveForm").show();
			$("#mapForm").hide();
			$("#reservedForm").hide();
			$("#designer li").css("background-color", "#f5f5f5");
			$("#designer li").css("border-top", "1px solid #dddddd");
			$(this).css("border-top", "2px solid black");
			$("#designer li").css("height", "50px")
			$(this).css("height", "49px")
			var date = new Date();
			var day = date.getDate() + "";
			$(this).css("background-color", "white");
			
			$("#reserveDate").text(date.getFullYear()+"년 "+(date.getMonth()+1)+"월 "+date.getDate()+"일");
			
			
			designer = $(this).text();
			calendar(date.getFullYear(), date.getMonth());
			
			/* $("td").filter(function() {
				return $(this).text() === day;
			}).css("background-color", "#fcfc90"); */
			$("#calendar tr td").filter(function() {
				return $(this).text() === day;
			}).click();
			
			
			$("#time tr td").css("background-color","white");
			$("#reserveTime").text("");
			time="";
			$("#reserveDesigner").text(designer);
			
			
			$("article#reserve h1 span").text(designer);
		})
		
		
		$("ul#designer li").eq(0).click();
		
		
		
		
		$(document).on('click',"table#reserved button",function() {
			var wNo=$(this).parent().parent().find("#hidden").val();
			
			if($(this).text()=='수정'){
				$("#updatePageBlack").fadeIn(300);
				$.ajax({  
					url : "${pageContext.request.contextPath }/management/updateWork.do",
					type : "get",
					data : {
								"wNo":wNo,
							},
					dataType : "json",
					success : function(json) {
						console.log(json);
						$("#upreserveTime").val(new Date(json[0].wReserveTime).format("yyyy-MM-dd"));		
						$("#upgName").val(json[0].wGNo.gName);
						$("#upgTel").val(json[0].wGNo.gTel)
						$("#upgLGrade").val(json[0].wGNo.gLGrade.lGrade)
						var str="";
						for(var i=0; i<json[0].productList.length; i++){
							str+=json[0].productList[i].pName+",";
						}
						str=str.slice(0,-1);
						$("#uppName").val(str);
						$("#upeName").val(json[0].wEName.eName);
						$("#upwPriceTotal").val(json[0].wPriceTotal);
						if(json.wWorkTime==null){
							$("#upworkTime").val("작업전");
						}else{
							$("#upworkTime").val(new Date(json[0].wWorkTime).format("yyyy-MM-dd"));
						}
					}
				})
			}
			if($(this).text()=='삭제'){
				var check=confirm("정말 삭제하시겠습니까?");
				if(check==true){
					$.ajax({  
						url : "${pageContext.request.contextPath }/management/deleteWork.do",
						type : "get",
						data : {
									"wNo":wNo
								},
						dataType : "json",
						success : function(json) {
							console.log(json);
							if(json>=2){
								
								var year=date.slice(0,4);
								var month=date.slice(date.indexOf("-")+1,date.lastIndexOf("-"));
								var choiceday=date.slice(date.lastIndexOf("-")+1,date.length);
								alert(choiceday);
								$("#designer li:contains('"+designer+"')").click();
								calendar(year,Number(month)-1);
								
								$("div#calendar tr td").filter(function() {
									
									return $(this).text() === choiceday;
								}).click();
								
							}else{
								alert("삭제실패");
							}							
						}
					})
				}
			}
		})
		
		$("img#x").click(function() {
			$("#updatePageBlack").fadeOut(300);
		})
	})
</script>
<section>
	
	
		<h1 id="title">예약관리</h1>
	<article>
		<h1>디자이너 선택</h1>
		<ul id="designer">
			<c:forEach var="list" items="${dList}">
				<li>${list.dName } ${list.dGrade }</li>
			</c:forEach>
		</ul>
	</article>
	<article>
		<h1>날짜 선택</h1>
		<div id="calendar"></div>
	</article>
	<article id="reserve">
		<h1><span></span>님의 예약 현황</h1>
		<table id="reserved">
		<tr>
			<th>예약일시</th>
			<th>손님명</th>
			<th>손님전화번호</th>
			<th>손님등급</th>
			<th>작업명</th>
			<th>이벤트</th>
			<th>가격</th>
			<th>완료일시</th>
			<th></th>
		</tr>
		
		</table>
	</article>
	

	
</section>
<div id="updatePageBlack">
	<div id="updatePage">
		<fieldset>
			<img id="x" src="${pageContext.request.contextPath }/images/reserve/x.png">
			<h1>예약 수정</h1>
			<label>예약일시 : </label><input type="date" id="upreserveTime">
			<select>
				<option>08:00</option>
				<option>09:30</option>
				<option>10:00</option>
				<option>10:30</option>
				<option>11:00</option>
				<option>11:30</option>
				<option>12:00</option>
				<option>12:30</option>
				<option>13:00</option>
				<option>13:30</option>
				<option>14:00</option>
				<option>14:30</option>
				<option>15:00</option>
				<option>15:30</option>
				<option>16:00</option>
				<option>16:30</option>
				<option>17:00</option>
				<option>17:30</option>
				<option>18:00</option>
				<option>18:30</option>
				<option>19:00</option>
			</select><br>
			<label>손님명 : </label><input type="text" id="upgName"><br>
			<label>손님전화번호 : </label><input type="text" id="upgTel"><br>
			<label>손님등급 : </label><input type="text" id="upgLGrade"><br>
			
			<label>작업명 : </label><input type="text" id="uppName"><br>
			<label>이벤트 :</label><input type="text" id="upeName"><br>
			<label>가격 : </label><input type="text" id="upwPriceTotal"><br>
			<label>완료일시 : </label><input type="date" id="upworkTime">
			<select>
				<option>08:00</option>
				<option>09:30</option>
				<option>10:00</option>
				<option>10:30</option>
				<option>11:00</option>
				<option>11:30</option>
				<option>12:00</option>
				<option>12:30</option>
				<option>13:00</option>
				<option>13:30</option>
				<option>14:00</option>
				<option>14:30</option>
				<option>15:00</option>
				<option>15:30</option>
				<option>16:00</option>
				<option>16:30</option>
				<option>17:00</option>
				<option>17:30</option>
				<option>18:00</option>
				<option>18:30</option>
				<option>19:00</option>
			</select><br>
			
		</fieldset>
	</div>
</div>
<%@ include file="../../include/footer.jsp"%>