<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>

<style>
section {
	clear: both;
	width: 1080px;
	margin: 0 auto;
	margin-bottom: 100px;
	margin-top: 100px;
	text-align: center;
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	var lastArray = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

	var nowDate = new Date();
	var data;
	var year = nowDate.getFullYear();
	var month = nowDate.getMonth()+1;
	var day = nowDate.getDate();
	
	var arr = new Array(); //동적 배열
	
	var lSize; //동적 배열의 X좌표 limit 사이즈
	var lStart;
	var json; //json반환 list 저장
	
		/* 	var options = {
		title : '총 매출 통계',
		curveType : 'function',
		legend : {
			position : 'bottom'
		}
	}; */
	$(function() {
		
		$.ajax({
			url : "${pageContext.request.contextPath}/management/chart.do",
			type : "post",
			data : {
			},
			dataType : "json",
			success : function(res) {
				json=res;
			}
		})
		
	var chartDraw= function() {}
	
	var options = {
			
		chart : {
		title : '총 매출 현황',
		subtitle : '월/년/일 차트 통계'
		},
		vAxis: {
			format: 'decimal'
			
		},
	
		
	};
	
	
	function drawChart() {
		data = google.visualization.arrayToDataTable(
		/* 	[
			[ 'Month', 'Sales', 'Expenses' ],
			[ '1', 1000, 400 ],
			[ '2', 1170, 460 ],
			[ '3', 660, 1120 ],
			[ '4', 1030, 540 ] 
		] */
		arr);
		
		var formatter = new google.visualization.NumberFormat({pattern:'###,###'});
		formatter.format(data,1);
		
		/* var chart = new google.visualization.LineChart(document
		.getElementById('curve_chart'));
		
		chart.draw(data, options); */
		
		var chart = new google.charts.Bar(document
		.getElementById('columnchart_material'));
		
		chart.draw(data, google.charts.Bar.convertOptions(options));
	}
	
	
	$("#category1").load("../category.html #category1-1");
	
	
	$(document).on("change", "#category1 select", function() {
		$("#category2").empty();
		$("#category3").empty();
		$(".result").empty();
		var target = $(this).find("option:selected").attr("data-target"); //#category2-1
		$("#category2").load("../category.html " + target);
		
		
		
	})

	$(document).on("change", "#category3 select", function() {
		var value = $("#category3 select").val();
		
		lSize=10;
		lStart=0;
		
		if($("#category2-2").val()=='매출금액'){
			
			if(value=='년별'){
				chartDraw=function(){
					$.ajax({
						url : "${pageContext.request.contextPath}/management/chart.do",
						type : "post",
						data : {
							"year":year,
							"lSize":lSize,
							"lStart":lStart,
							"flag":"고객 매출금액 년별"
						},
						
						
						dataType : "json",
						success : function(res) {
							
							arr = new Array();
							arr[0] = new Array();
							arr[0][0] = "고객 매출 순위"+(lStart+1)+"~"+((lStart)+lSize);
							
							arr[0][1] = year + "년";
							
							for (var i = 1; i < res.length+1; i++) {
								arr[i] = new Array();
								arr[i][0] = res[i-1].wGNo.gName;
								arr[i][1] = res[i-1].wPriceTotal;
							}
							
							console.log(arr);
							
							
							google.charts.load('current', {
								'packages' : [ 'bar' ]
							});
							google.charts.setOnLoadCallback(drawChart);
						}
					})
	
					
				}
				
				lStart=lStart-10;
				$("#add").click();
				
			}
			else if(value=='월별'){
				chartDraw=function(){
					$.ajax({
						url : "${pageContext.request.contextPath}/management/chart.do",
						type : "post",
						data : {
							"year":year,
							"month":month,
							"lSize":lSize,
							"lStart":lStart,
							"flag":"고객 매출금액 월별"
						},
						
						
						dataType : "json",
						success : function(res) {
							
							arr = new Array();
							arr[0] = new Array();
							arr[0][0] = "고객 매출 순위"+(lStart+1)+"~"+((lStart)+lSize);
							
							arr[0][1] = month + "월";
							
							for (var i = 1; i < res.length+1; i++) {
								arr[i] = new Array();
								arr[i][0] = res[i-1].wGNo.gName;
								arr[i][1] = res[i-1].wPriceTotal;
							}
							
							console.log(arr);
							
							
							google.charts.load('current', {
								'packages' : [ 'bar' ]
							});
							google.charts.setOnLoadCallback(drawChart);
						}
					})
	
					
				}
				
				lStart=lStart-10;
				$("#add").click();
				
			}
		}else if($("#category2-2").val()=='방문수'){
			if(value=='년별'){
				alert("년별")
			}
			else if(value=='월별'){
				alert("월별")
			}
		}
	})
	$(document).on("change", "#category2 select", function() {
		var value2 = $("#category2 select").val();
		year = nowDate.getFullYear();
		month = nowDate.getMonth()+1;
		day = nowDate.getDate();
		
		if($("#category1-1").val()=='손님 현황'){
			var target = $(this).find("option:selected").attr("data-target");
			if (target == null) {
				$("#category3").remove();
			}else{
				$("#category3").load("../category.html " + target);
			}
		}
		
		
		if(value2=='년/월'){
			chartDraw=function(){
				arr = new Array();
				arr[0] = new Array();
				arr[0][0] = "년/월";

				for (var i = 1; i < Number(nowDate.getFullYear())
						- Number(year) + 2; i++) {
					arr[0][i] = Number(nowDate.getFullYear()) - i
							+ 1 + "년";
				}


				
				for (var i = 1; i < 13; i++) {
					arr[i] = new Array();
					arr[i][0] = i+"월";
					for (var j = 1; j < Number(nowDate.getFullYear())- Number(year) + 2; j++) {
						arr[i][j] = 0;
					}
				}

				console.log(arr);

				for (var i = 0; i < json.length; i++) {
					var date = new Date(json[i].wReserveTime);
					for (var j = 1; j < Number(nowDate
							.getFullYear())
							- Number(year) + 2; j++) {
						if (date.getFullYear() == arr[0][j].slice(0, 4)) {
							arr[date.getMonth()+1][j] += Number(arr[
									date.getMonth()+1, j])
									+ json[i].wPriceTotal != null ? Number(json[i].wPriceTotal)
									: 0;
						}
					}

				}
				
				
				/* google.charts.load('current', {
					'packages' : [ 'corechart' ]
				});
				
				google.charts.setOnLoadCallback(drawChart); */

				google.charts.load('current', {
					'packages' : [ 'bar' ]
				});
				google.charts.setOnLoadCallback(drawChart);

			}
			year++;
			$("#add").click();
		
		}else if(value2=='월/일'){
			chartDraw=function(){
				arr = new Array();
				arr[0] = new Array();
				arr[0][0] = "월/일";
				for (var i = 1; i < Number(nowDate.getMonth()+1)-Number(month) + 2; i++) {
					arr[0][i] = Number(nowDate.getMonth()+1) - i+1 + "월";
				}
				
				for (var i = 1; i < 32; i++) {
					arr[i] = new Array();
					arr[i][0] = i;
					for (var j = 1; j < Number(nowDate.getMonth()+1)-Number(month) + 2; j++) {
						arr[i][j] = 0;
					}
				}



				for (var i = 0; i < json.length; i++) {
					var date = new Date(json[i].wReserveTime);
					for (var j = 1; j < Number(nowDate.getMonth()+1)- Number(month) + 2; j++) {
						if (date.getMonth()+1 == arr[0][j].slice(0,arr[0][j].indexOf("월"))) {
							arr[date.getDate()][j] += Number(arr[date.getDate(), j]) + json[i].wPriceTotal != null ? Number(json[i].wPriceTotal): 0;
						}
					}

				}
				console.log(arr);
					/* google.charts.load('current', {
						'packages' : [ 'corechart' ]
					});
					
					google.charts.setOnLoadCallback(drawChart); */

					google.charts.load('current', {
						'packages' : [ 'bar' ]
					});
					google.charts.setOnLoadCallback(drawChart);

				}
				
				month++;
				$("#add").click();
			
			}else if(value2=='일/시간'){
				chartDraw=function(){
					arr = new Array();
					arr[0] = new Array();
					arr[0][0] = "일/시간";
					for (var i = 1; i < Number(nowDate.getDate())-Number(day) + 2; i++) {
						arr[0][i] = Number(nowDate.getDate()) - i+1 + "일";
					}
					
						
						console.log(arr);
					for (var i = 1; i < 25; i++) {
						arr[i] = new Array();
						arr[i][0] = i;
						for (var j = 1; j < Number(nowDate.getDate())-Number(day) + 2; j++) {
							arr[i][j] = 0;
						}
					}


					for (var i = 0; i < json.length; i++) {
						var date = new Date(json[i].wReserveTime);
						for (var j = 1; j < Number(nowDate.getDate())- Number(day) + 2; j++) {
							if (date.getDate() == arr[0][j].slice(0,arr[0][j].indexOf("일"))) {
								arr[date.getHours()+1][j] += Number(arr[date.getHours()+1, j]) + json[i].wPriceTotal != null ? Number(json[i].wPriceTotal): 0;
							}
						}

					}
					console.log(arr);
						/* google.charts.load('current', {
							'packages' : [ 'corechart' ]
						});
						
						google.charts.setOnLoadCallback(drawChart); */

						google.charts.load('current', {
							'packages' : [ 'bar' ]
						});
						google.charts.setOnLoadCallback(drawChart);

				}
				
			day++;
			$("#add").click();
		}
			
			
			/* var target = $(this).find("option:selected").attr("data-target");
			if (target == null) {
				$("#category3").remove();
			}else{
				$("#category3").load("../category.html " + target);
			} */
	})
		
		$(document).on("change","#category3 select",function(){
			/* var value1 = $("#category1 select").val();
			var value2 = $("#category2 select").val();
			var value3 = $("#category3 select").val();
			
			$(".result").text(value1+">"+value2+">"+value3); */
		})
		
			
			$(document).on("click","#add",function() {
				
				if($("#category1-1").val()=='매출 현황'){
					
					$("#add").text("추가");
					$("#sub").text("삭제");
					$("#add").show();
					$("#sub").show();
					$("#prev").hide();
					$("#next").hide();
					
					
					if($("#category2-1").val()=='년/월'){
						year--;
					}else if($("#category2-1").val()=='월/일'){
						month--;
					}else if($("#category2-1").val()=='일/시간'){
						day--;
					}
				}
				
				
				
				
				
				if($("#category1-1").val()=='손님 현황'){
					
					$("#add").text("다음고객순위");
					$("#sub").text("이전고객순위");
					$("#add").show();
					$("#sub").show();
					$("#prev").show();
					$("#next").show();
					
					if($("#category2-2").val()=='매출금액'){
						lStart=lStart+10;
					}	
				}
				
				chartDraw();
			})
					
			$("#sub").click(function() {
				if($("#category2-1").val()=='년/월'){
					if (year != nowDate.getFullYear())
						year++;
				}else if($("#category2-1").val()=='월/일'){
					if (month != nowDate.getMonth()+1)
						month++;
				}else if($("#category2-1").val()=='일/시간'){
					if (day != nowDate.getDate())
						day++;
				}else if($("#category2-2").val()=='매출금액'){
					lStart=lStart-10;
				}
				chartDraw();
			})
			
			$("#prev").click(function() {
				if($("#category3-3").val()=='년별'){
					year--;
					chartDraw();
				}
				if($("#category3-3").val()=='월별'){
					month--;
					chartDraw();
				}
				
			})
			
			
			
			
			
			
			$("#next").click(function() {
				if($("#category3-3").val()=='년별'){
					if(year!=nowDate.getFullYear())
						year++;
					else
						alert("해를 넘길수없습니다.");
					chartDraw();
				}
				if($("#category3-3").val()=='월별'){
					if(month!=12)
						month++;
					else
						alert("해를 넘길수없습니다.");
					chartDraw();
				}
			})
			
			$("#add").hide();
			$("#sub").hide();
			$("#prev").hide();
			$("#next").hide();
		})
		
		
		
		
</script>








<section>
	<div class="exec">
		<span id="category1"></span>
		<span id="category2"></span>
		<span id="category3"></span>
	</div>
	<div class="result"></div>
	<br>
	<br>
	<div id="columnchart_material" style="width: 100%; height: 500px;"></div>
	<button id="add">추가</button>
	<button id="sub">삭제</button>
	<button id="prev">이전날</button>
	<button id="next">다음날</button>
	
</section>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	
</script>

<%@ include file="../../include/footer.jsp"%>