<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width:450px;
	height:1100px;
	padding: 20px;  
	margin: 2px;
	float: left;
}
section article#border div#guest{
	width:400px;
	height:1100px;
	background:white;
	display: inline-block;
	padding: 20px;
	margin: 2px;
	margin-left: 10px;
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
	top: 0px;
	left: 0px;
}

section article#border div#form div#calendar img#right {
	top: 0px;
	rigth: -50px;
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
section article#border div#form div#map input{
	
}
section article#border table#time td {
	float: left;
	border: 1px solid black;
	margin: 1px;
}       
           
section article#border table#time {
	border-collapse: collapse;
	width: 450px;
	height: 100px;
}
section article#border table#item td {
	width: 100px;
	height:40px;
	line-height:40px;
	float: left;      
	border: 1px solid black;
	margin: 1px;
}


section article#border div#guest img{
	width:400px;
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

section article#border div#guest div#reserve span{
	color: #3B9838;
	font-weight: bold;
}
.reserved{
	color: #E5E5E5;
	cursor: not-allowed;
}

</style>
<script type="text/javascript">
	var designer = "";
	var date="";
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
						if(0<=rMinutes && rMinutes<=30){
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
			if($(this).hasClass("reserved")){
				alert("이미 예약되었습니다.")
			}else{
				$("#time tr td").css("background-color","white");
				$(this).css("background-color","#fcfc90");
				time=$(this).text();
				
				$("#reserveTime").text(time);
			}
			
		})
		
		//메뉴 선택 햇을때 이벤트
		$("#item tr td").click(function() {
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
			
			
		})
		
		$("#designer li").click(function() {
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
		})
		
		
		$("ul#designer li").eq(0).click();
	})
</script>
<section>
	
	<article id="border">
		<div id="designerList">
			<h1 id="title">예약하기</h1>
			<ul id="designer">
			
				<c:forEach var="list" items="${dList}">
					<li>${list.dName } ${list.dGrade }</li>
				</c:forEach>
			</ul>
		</div>
		<div id="form">
			<div id="reserveForm">
				<h3>날짜 선택</h3>
				<div id="calendar"></div>
				<br>
				<hr>
				<br>
				<h3>시간 선택</h3>
				<br>
	
	
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
				<br>
				<hr>
				<br>
				
				<h3>메뉴 선택</h3>
				<br>
				<table id="item">
					<tr>
						<c:forEach var="product" items="${pList}">
							<td>${product.pName }</td>
						</c:forEach>
					</tr>
				</table>
			
			</div>
			<div id="mapForm">
				<input type="text"><button id="search">검색</button>
				<div id="map" style="width:450px;height:400px;">
			</div>
			</div>          
		</div>
            

		<div id="guest">
			<img src="${pageContext.request.contextPath}/images/reserve/reserve.jpg">
			<h2>차홍아르더 본점</h2>
			<p>대구 광역시 동구 방촌동</p>
			<p>053-981-0000</p>
			<p>00:00~22:00</p>
			<div id="logo">
				<span>예약하기</span>
				<span>예약확인</span>
				<span>오시는길</span>
			</div>
			
			<script type="text/javascript">
				$("#logo span").eq(2).click(function() {
					$("#reserveForm").hide();
					$("#mapForm").show();
					var ps = new kakao.maps.services.Places(); 
					ps.keywordSearch("영남인재교육원", placesSearchCB);
					window.setTimeout(function() {
					    map.relayout();
					}, 0);
				})
				$("#logo span").eq(0).click(function() {
					$("#reserveForm").show();
					$("#mapForm").hide();
				})
			</script>
			
			<br>
			<hr>
			<br>
			<p id="guestText">
			<label>고객명</label><input type="text" name="gName" id="gName"><br>
			<label>핸드폰번호</label><input type="text" name="gTel" id="gTel"><br>
			<br>
			<input type="checkbox"><span class="underline">개인정보 수집 및 이용</span>안내에 동의 합니다.
			</p>
			<br>
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
						
		</div>
		
		
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e7a1993c6a8fe959ae3a03145152acfa&libraries=services,clusterer,drawing"></script>
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
				var text=$(this).prev().val();
				var ps = new kakao.maps.services.Places(); 
				ps.keywordSearch(text, placesSearchCB);
			})
		</script>
		<!-- <a href="https://map.kakao.com/?urlX=851400&urlY=659402&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false" target="_blank"><img width="504" height="310" src="https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=851400&MY=659402&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo" style="border:1px solid #ccc"></a><div class="hide" style="overflow:hidden;padding:7px 11px;border:1px solid #dfdfdf;border-color:rgba(0,0,0,.1);border-radius:0 0 2px 2px;background-color:#f9f9f9;width:482px;"><strong style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵"></strong><div style="float: right;position:relative"><a style="font-size:12px;text-decoration:none;float:left;height:15px;padding-top:1px;line-height:15px;color:#000" target="_blank" href="https://map.kakao.com/?urlX=851400&urlY=659402&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false">지도 크게 보기</a></div></div> -->
		
	</article>
</section>


<%@ include file="../../include/footer.jsp"%>
