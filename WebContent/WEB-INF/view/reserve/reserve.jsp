<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include/header.jsp"%>

<style>
section {
	width: 1050px;
	margin: 0 auto;
}
.underline{
	text-decoration: underline;
}       
section ul#designer h1#title {
	clear: both;
}

section div#designerList {
	width: 900px;
	height: 200px;
	padding: 20px;
	margin-bottom: 10px;
}
section ul#designer {
	display: block;
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

section article#border {
	clear: both;
	background: #ebebeb;
	padding: 30px;
	padding-left:40px;
	padding-right:40px;
	
	display:inline-block;
}


section article#border div#designerList{
	background-color: white;
} 

section article#border div#form {
	background: white;
	width:520px;
	height:1100px;
	padding: 20px;  
	float: left;
}


section article#border div#guest{
	float:right;
	width:320px;
	height:1100px;
	background:white;
	display: inline-block;
	padding: 20px;
}
section article#border div#guest button#commit{
	display:block;
	
}
section article#border div#form div#calendar {
	width: 450px;
}

section article#border div#form div#calendar table {
	border-collapse: collapse;
	width: 450px;
}

section article#border div#form div#calendar h1 {
	background: #e9e9e9;
	font-size: 30px;
	text-align: center;
	margin-top: 10px;
	margin-bottom: 10px;
	position: relative;
}


section article#border div#form div#calendar img#left {
	position: absolute;
	top: 10px;
	left: 10px;
}

section article#border div#form div#calendar img#right {
	top: 10px;
	right: 10px;
	position: absolute;
}

section article#border div#form div#calendar img {
	width: 20px;
	height: 20px;
}
section article#border td {
	text-align: center;
	width: 60px;
	height: 30px;
	line-height: 30px;
}
section article#border div#form div#calendar tr#date {
	
}


section article#border div#form div#calendar td.day {
	cursor: pointer;
}

section article#border div#form div#mapForm{
	display: none;
}
section article#border div#form div#mapForm input{
	float: right;
}
section article#border div#form div#mapForm button{
	float: right;
}
section article#border div#form div#mapForm img{
	margin-top:20px;
	display:block;
	width:450px;
	height:270px;
	margin:0 auto;	
}




section article#border div#form div#reservedForm{
	display: none;
}
section article#border div#form div#reservedForm div#reservedList{
	
}
section article#border div#form div#reservedForm div#reservedList table{
	border-collapse: collapse;
}

div#form div#reservedForm div#reservedList table th:nth-child(1){
	width:100px;
}
div#form div#reservedForm div#reservedList table th:nth-child(2){
	width: 100px;
}
div#form div#reservedForm div#reservedList table th:nth-child(3){
	width: 100px;
}
div#form div#reservedForm div#reservedList table th:nth-child(4){
	width: 100px;
}
div#form div#reservedForm div#reservedList table th:nth-child(5){
	width: 100px;
}

div#form div#reservedForm div#reservedList table th:nth-child(6){
	padding:10px;
	width: 40px;
}

div#form div#reservedForm div#reservedList table td button{
	width: 40px;	
}
div#form div#reservedForm div#reservedList table td,div#form div#reservedForm div#reservedList table th{
	border: 1px solid black;
}
section article#border div#form div#map input{
	
}
section article#border table#time{
	margin-top:20px;
	border-collapse: collapse;
	width: 450px;
	height: 100px;
}
section article#border table#time td {
	float: left;
	border: 1px solid black;
	margin: 1px;
	cursor: pointer;
}       
           
section article#border table#item{
	margin-top:20px;
}
section article#border table#item td {
	width: 100px;
	height:40px;
	line-height:40px;
	float: left;      
	border: 1px solid black;
	margin: 1px;
	cursor: pointer;
}


section article#border div#guest img{
	width:320px;
	height: 280px;
	float: left;
}
section article#border div#guest h2{
	clear: both;
}
section article#border div#guest p#guestText{

}

section article#border div#guest p#guestText label{
	float: left;
	width: 100px;
}

section article#border div#guest div#menuIcon{
	display:block;
	width:100%;
	height: 120px;
}

section article#border div#guest div#menuIcon div{
	width:80px;
	height:100px;
	float: left;
	margin-right: 10px;
	cursor: pointer;
}
section article#border div#guest div#menuIcon div:first-child{
	margin-left:20px;
	margin-right:20px;
	text-align: center;
}
section article#border div#guest div#menuIcon img{
	display:block;
	
	width: 80px;
	height: 60px;
}



section article#border div#guest div#reserve{
	clear: both;
}
section article#border div#guest div#reserve span{
	color: #3B9838;
	font-weight: bold;
}
.reserved{
	color: #E5E5E5 !important;
	cursor: not-allowed !important;
}

#reservedList img{
	width:500px;
	text-align: center;
}

.toggle{
	display: none;
}

@media all and (max-width:510px){
	#designer li{
		width:80px !important;
	}
	
	
}
@media all and (max-width:1199px){
	section{
		width:100%;
		padding:0;
	}
	
	section article#border {
		width:98% !important;
		padding:2%;
		
		height: auto !important;
		
	}
	
	
	
	
	section div#form div#reserveForm{
		width:98% !important;
		padding:2%;
	}
	section div#form{
		height: auto !important;
		width:92% !important;
		padding:2.5% !important;
		
	}
	
	
	section div#designerList{
		width:92%;
		height:auto !important;
		padding:2.5%;
	}
	.show{
		display: none;
	}
	
	.hide{
		display: none;
	}
	.toggle{
		display: block;
	}
	
	
	
	section article#border div#form div#calendar table{
		width:100%;
	}
	section article#border div#form div#calendar{
		width: 90% !important;
		
	}
	
	section article#border table#time {
		width: 90% !important;
	}
	
	section article#border div#guest {
		
	}
	section article#border div#guest {
	
	}
	section article#border div#guest {
		margin:0 !important;
		padding:2.5%;
		float: none;
		width:92%;
	}
		
	
	
}

</style>
<script type="text/javascript">
	var designer = "";
	var date=new Date();
	var time="";
	var hair="";
	var haircount=0;
	
	function pad(n, width) {
		  n = n + '';
		  return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
	}
	
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
		
		var nowDate = new Date();
		
		
		for (var j = 0; j < t.getDay(); j++) {
			calendar += "<td></td>";
		}
		for (var i = t.getDay(); i < t.getDay() + lastArray[t.getMonth()]; i++) {

			if (i % 7 == 0)
				calendar += "</tr><tr>"
			
			if(year<nowDate.getFullYear()){
				calendar += "<td class='reserved'>" + count + "</td>";
			}else{
				if(year==nowDate.getFullYear()){
					if(month<=nowDate.getMonth()){
						if(month==nowDate.getMonth() && count>=nowDate.getDate()){
							calendar += "<td class='day'>" + count + "</td>";							
						}else{
							calendar += "<td class='reserved'>" + count + "</td>";
						}
					}else{
						calendar += "<td class='day'>" + count + "</td>";
					}
					
				}else{
					calendar += "<td class='day'>" + count + "</td>";
				}
			}
			count++;
		

		}
		calendar += "</tr></table>";
		$("#calendar").html(calendar);

	}

	$(function() {
		var calDate = new Date();
		calendar(calDate.getFullYear(), calDate.getMonth());

		$(document).on('click', '#left', function() {
			var str = $("#calendar h1").text();
			var year = str.slice(0, 4);
			var month = str.slice(str.indexOf(".") + 1);
			calendar(year, month - 2);
			$(".day").eq(0).click();
		})
		$(document).on('click', '#right', function() {
			var str = $("#calendar h1").text();
			var year = str.slice(0, 4);
			var month = str.slice(str.indexOf(".") + 1);
			console.log(year);
			console.log(month);
			calendar(year, month);
			$(".day").eq(0).click();
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
					for(var i=0; i<json.wListMap.length; i++){
						var reserve = new Date(json.wListMap[i].wReserveTime);
						var rHours=reserve.getHours();
						var rMinutes=reserve.getMinutes();
						var str="";
						if(0<=rMinutes && rMinutes<30){
							rMinutes=0;
							rHours=pad(rHours,2);
							rMinutes=pad(rMinutes,2);
							$("#time tr td").filter(function() {
								return $(this).text() === rHours+":"+rMinutes;
							}).addClass("reserved");
						}else{
							rMinutes=30;
							rHours=pad(rHours,2);
							rMinutes=pad(rMinutes,2);
							$("#time tr td").filter(function() {
								return $(this).text() === rHours+":"+rMinutes;
							}).addClass("reserved");
						}
					}
				}
			})

		})
		
		//시간선택하였을때 이벤트
		$("#time tr td").click(function() {
			if(date==''){
				alert("날짜를 먼저 선택해주세용");
			}else{
				if($(this).hasClass("reserved")){
					alert("이미 예약되었습니다.")
				}else{
					$("#time tr td").css("background-color","white");
					$(this).css("background-color","#fcfc90");
					time=$(this).text();
					
					$("#reserveTime").text(time);
				}
			}
			
			
		})
		
		//메뉴 선택 햇을때 이벤트
		$("#item tr td").click(function() {
			
			if(time==''){
				alert("시간을 먼저 선택해주세요.");
			}
			else{
				var check=$(this).css("background-color")=="rgb(252, 252, 144)";
				if(check==true){
					$(this).css("background-color","white");
					var str=$(this).text();
					hair=hair.replace(str+",","");
					haircount--;
				}else{
					if(haircount>=3){
						alert("메뉴는 3개까지만 선택가능합니다.")
					}else{
						$(this).css("background-color","#fcfc90");
						hair+=$(this).text()+",";
						haircount++;
					}
				}
				
				$("#reserveProduct").text(hair.slice(0,-1));
			
			}
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
			$(this).css("background-color", "white");
			
			
			date=new Date(date);
			
			$("#reserveDate").text(date.getFullYear()+"년 "+(date.getMonth()+1)+"월 "+date.getDate()+"일");
			
			designer = $(this).text();
			calendar(date.getFullYear(), date.getMonth());
			
			/* $("td").filter(function() {
				return $(this).text() === day;
			}).css("background-color", "#fcfc90"); */
			$("#calendar tr td").filter(function() {
				return $(this).text() == date.getDate();
			}).click();
			
			/* 초기화 작업 */
			time="";
			hair="";
			haircount=0;
			$("#time tr td").css("background-color","white");
			$("#item tr td").css("background-color","white");
			$("#reserveTime").text("");
			$("#reserveProduct").text("");
			$("#reserveDesigner").text(designer);
		})
		
		/* 첫화면 디자이너 셋팅 */
		$("ul#designer li").eq(0).click();
		
		
		/* 예약확인에서 예약 취소하기 */
		$(document).on("click","button.delete",function() {
			var wNo=$(this).prev().val();
			var check=confirm("정말 예약을 취소 하시겠습니까?");
			
			if(check==true){
				$.ajax({  
					url : "${pageContext.request.contextPath }/management/deleteWork.do",
					type : "get",
					data : {
								"wNo":wNo,
							},
					dataType : "json",
					success : function(json) {
						if(json>0){
							alert("예약이 취소되었습니다.");
							$("#menuIcon div").eq(1).click();							
						}else{
							alert("취소실패");
						}
					}
				})			
			}
		})
		$(".show").click(function() {
			$(this).next().next().slideDown();
		})
		$(".toggle").click(function() {
			
			$(this).next().slideToggle();
		})
		
	})
</script>
<section>
	
	<article id="border">
		<div id="designerList">
			<h3 class="show">디자이너 선택</h3>
			<h3 class="toggle">디자이너 선택</h3>
			<div class="hide">
			<ul id="designer">
				<c:forEach var="list" items="${dList}">
					<li>${list.dName } ${list.dGrade }</li>
				</c:forEach>
			</ul>
			</div>
		</div>
		<div id="form">
			<div id="reserveForm">
				<h3 class="show">날짜 선택</h3>
				<h3 class="toggle">날짜 선택</h3>
				<div id="calendar" class="hide"></div>
				<br>
				<hr>
				<br>
				<h3 class="show">시간 선택</h3>
				<h3 class="toggle">시간 선택</h3>
				<div  class="hide">
				<table id="time">
					<tr>
						<td>08:00</td>
						<td>09:30</td>
						<td>10:00</td>
						<td>10:30</td>
						<td>11:00</td>
						<td>11:30</td>
						<td>12:00</td>
						<td>12:30</td>
						<td>13:00</td>
						<td>13:30</td>
						<td>14:00</td>
						<td>14:30</td>
						<td>15:00</td>
						<td>15:30</td>
						<td>16:00</td>
						<td>16:30</td>
						<td>17:00</td>
						<td>17:30</td>
						<td>18:00</td>
						<td>18:30</td>
						<td>19:00</td>
					
					</tr>
				</table>
				</div>
				<br>
				<hr>
				<br>
				
				<h3 class="show">메뉴 선택</h3>
				<h3 class="toggle">메뉴 선택</h3>
				<div class="hide">
				<table id="item">
					<tr>
						<c:forEach var="product" items="${pList}">
							<td>${product.pName }</td>
						</c:forEach>
					</tr>
				</table>
				</div>
			</div>
			<div id="mapForm">
				<button id="search">검색</button><input type="text">
				<div id="map" style="width:520px;height:520px;"></div>
				
				<img src="${pageContext.request.contextPath}/images/reserve/findLoad1.PNG">
				<img src="${pageContext.request.contextPath}/images/reserve/findLoad2.PNG">
				
			</div>
			<div id="reservedForm">
				<h2>예약 정보</h2>
				<br>
				<div id="reservedList">
					<table>
						<tr>
							<th>디자이너</th>							
							<th>예약시간</th>
							<th>작업시간</th>
							<th>작업명</th>
							<th>가격</th>
							<th></th>
						</tr>
						<tr>
							<td colspan="6">고객명,핸드폰번호를 입력해주세요</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
            

		<div id="guest">
			<img src="${pageContext.request.contextPath}/images/reserve/reserve.jpg">
			<h2>차홍아르더 본점</h2>
			<p>대구 광역시 동구 방촌동</p>
			<p>053-981-0000</p>
			<p>00:00~22:00</p>
			
			<br>
			<hr>
			<br>
			
			
			<div id="menuIcon">
				<div>
					<img src="${pageContext.request.contextPath}/images/reserve/time.png"><br>
					<span>예약하기</span>
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/images/reserve/check.jpg"><br>
					<span>예약확인</span>
				</div>
				<div >
					<img src="${pageContext.request.contextPath}/images/reserve/come.PNG"><br>
					<span>오시는길</span>
				</div>
			</div>
			
			<script type="text/javascript">
				$(function() {
					$("div#menuIcon div").eq(0).click(function() {
						$("#reserveForm").show();
						$("#mapForm").hide();
						$("#reservedForm").hide();
						$("#commit").text("예약신청");
					})
					$("div#menuIcon div").eq(1).click(function() {
						$("#reserveForm").hide();
						$("#mapForm").hide();
						$("#reservedForm").show();
						
						$("#commit").text("예약확인");
						$("#commit").click();
					})
					$("div#menuIcon div").eq(2).click(function() {
						$("#reserveForm").hide();
						$("#mapForm").show();
						$("#reservedForm").hide();
						var ps = new kakao.maps.services.Places(); 
						ps.keywordSearch("영남인재교육원", placesSearchCB);
						window.setTimeout(function() {
						    map.relayout();
						}, 0);
					})
				})
				
			</script>
			<hr>
			<br>
			
			
			<div id="reserve">
					<label>예약시간</label> : <span id="reserveDate"></span><span id="reserveTime"></span><br>
					<label>디자이너</label> : <span id="reserveDesigner"></span><br>
					<label>메뉴</label> : <span id="reserveProduct"></span><br>
			</div>
			
			<br>
			<hr>
			<br>
				
			<p id="guestText">
				<label>고객명</label><input type="text" name="gName" id="gName"><br>
				<label>핸드폰번호</label><input type="text" name="gTel" id="gTel" placeholder='"-"를 붙여서 입력해 주세요.'><br>
				<script>
					$(function() {
						if(${guest.gNo }>0){
							$("#gName").val('${guest.gName}');
							$("#gTel").val('${guest.gTel}');
							$("#gName").attr("disabled",true);
							$("#gTel").attr("disabled",true);
						}						
					})
				</script>
				
				
				<br>
					<input type="checkbox" id="privacy"><span class="underline">개인정보 수집 및 이용</span>안내에 동의 합니다.
					<br>
					<br>
					<button id="commit">예약신청</button>
				</p>
				
				<br>
				<hr>
				<br>
				
		</div>
		
		<script type="text/javascript">
				$(function() {
					$("#commit").click(function() {
						var gName=$("#gName").val();
						var gTel=$("#gTel").val();	
						if($(this).text()=="예약확인"){
							$("#reservedList table td").remove();
							$.ajax({  
								url : "${pageContext.request.contextPath }/reserve/reservedCheck.do",
								type : "post",
								data : {
											"gName":gName,
											"gTel":gTel
										},
								dataType : "json",
								success : function(json) {
									console.log(json);
									if(json.length>0){
										for(var i=0; i<json.length; i++){
											var work=json[i];
											var str = "";
											str+="<tr>";
											str+="<td>"+work.wDNo.dName+" "+work.wDNo.dGrade+"</td>";
											str+="<td>"+new Date(work.wReserveTime).format('yyyy-MM-dd a/p hh:mm')+"</td>";
											if(work.wWorkTime==null){
												str+="<td>작업전</td>"
											}
											else{
												str+="<td>"+new Date(work.wWorkTime).format('yyyy-MM-dd a/p hh:mm')+"</td>";
											}
											str+="<td>";
											for(var j=0; j<work.productList.length; j++){
												str+=work.productList[j].pName+",";	
											}
											
											
											
											str=str.slice(0,-1);
											str+="</td>";
											str+="<td>"+work.wPriceTotal.toLocaleString()+"원</td>";
											if(work.wWorkTime==null){
												
												str+="<td><input type='hidden' value='"+work.wNo+"'><button class='delete'>예약 취소</td>";	
											}
											else{
												str+="<td></td>";
											}
											
											
											str+="</tr>";
											
											
											$("#reservedList table").append(str);
										}
									}else{
										var str="<tr>";
										str+="<td colspan='6'> 예약된 정보가 없습니다. </td>";
										str+="</tr>";
										$("#reservedList table").append(str);
										$("#reservedList img").remove();
										$("#reservedList").append("<img src='${pageContext.request.contextPath }/images/reserve/noreserved.PNG'>");
									}
										
								}
							})
						}
						if($(this).text()=="예약신청"){
							
							if(date==''){
								alert("날짜를 선택해주세요.");
							}
							else if(time==''){
								alert("시간을 선택해주세요.");
							}
							else if(hair==''){
								alert("메뉴를 선택해주세요.");
							}
							else if($("#gName").val()==''){
								alert("이름을 입력해 주세요.");
							}
							else if($("#gTel").val()==''){
								alert("전화번호를 입력해 주세요.");
							}
							else if($("#privacy").prop("checked")==false){
								alert("약관을 동의해 주세요.");
							}
							else{
								var reserveDate=$("#reserve span").eq(0).text();
								var reserveTime=$("#reserve span").eq(1).text();
								var reserveDesigner=$("#reserve span").eq(2).text();
								var reserveProduct=$("#reserve span").eq(3).text();
								
								
								$.ajax({  
									url : "${pageContext.request.contextPath}/reserve/insertReserve.do?",
									type : "get",
									data : {
												"gName":gName,
												"gTel":gTel,
												"reserveDate":reserveDate,
												"reserveTime":reserveTime,
												"reserveDesigner":reserveDesigner,
												"reserveProduct":reserveProduct
											},
									dataType : "json",
									success : function(json) {
										if(json>0){
											alert("예약 완료되었습니다.");
											$("#menuIcon div").eq(1).click();
										}		
									}
								})
								
								
								
							}
						}
					})
					
										
					if(${reserved }==true){
						$("#gName").val('${gName}');
						$("#gTel").val('${gTel}');
						
						$("#logo span").eq(1).click();
						
					}
					
					
					
					
				})
				
			</script>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d21ad01c96aff8d55b25508bcfc6aa05&libraries=services,clusterer,drawing"></script>
		<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d12b5c6588fcf758d1a3d2f1e433c251&libraries=services,clusterer,drawing"></script> -->
		<script type="text/javascript">
			// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
			var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
	
			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
	
			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places(); 
	
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			
			
			// 키워드로 장소를 검색합니다
			ps.keywordSearch('영남인재교육원', placesSearchCB); 
	
			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB (data, status, pagination) {
			    if (status === kakao.maps.services.Status.OK) {
	
			        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			        // LatLngBounds 객체에 좌표를 추가합니다
			        var bounds = new kakao.maps.LatLngBounds();
	         
			        for (var i=0; i<data.length; i++) {
			            displayMarker(data[i]);    
			            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
			        }       
	
			        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			        map.setBounds(bounds);
			    } 
			}
	
			// 지도에 마커를 표시하는 함수입니다
			function displayMarker(place) {
			    
			    // 마커를 생성하고 지도에 표시합니다
			    var marker = new kakao.maps.Marker({
			        map: map,
			        position: new kakao.maps.LatLng(place.y, place.x) 
			    });
	
			    // 마커에 클릭이벤트를 등록합니다
			    kakao.maps.event.addListener(marker, 'click', function() {
			        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
			        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
			        infowindow.open(map, marker);
			    });
			}
		</script>
		
		<script type="text/javascript">
			$("#search").click(function() {
				var text=$(this).next().val();
				var ps = new kakao.maps.services.Places(); 
				ps.keywordSearch(text, placesSearchCB);
			})
		</script>
		<!-- <a href="https://map.kakao.com/?urlX=851400&urlY=659402&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false" target="_blank"><img width="504" height="310" src="https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=851400&MY=659402&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo" style="border:1px solid #ccc"></a><div class="hide" style="overflow:hidden;padding:7px 11px;border:1px solid #dfdfdf;border-color:rgba(0,0,0,.1);border-radius:0 0 2px 2px;background-color:#f9f9f9;width:482px;"><strong style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵"></strong><div style="float: right;position:relative"><a style="font-size:12px;text-decoration:none;float:left;height:15px;padding-top:1px;line-height:15px;color:#000" target="_blank" href="https://map.kakao.com/?urlX=851400&urlY=659402&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false">지도 크게 보기</a></div></div> -->
		
	</article>
</section>


<%@ include file="../../include/footer.jsp"%>
