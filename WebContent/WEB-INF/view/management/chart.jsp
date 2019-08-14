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
	var nowDate = new Date();
	var data;
	var year = nowDate.getFullYear();
	var month = nowDate.getMonth();
	var day = nowDate.getDate();
	var arr = new Array();

		/* 	var options = {
		title : '총 매출 통계',
		curveType : 'function',
		legend : {
			position : 'bottom'
		}
	}; */
	var options = {
		chart : {
		title : '총 매출 현황',
		subtitle : '월/년/일 차트 통계'
		},
		vAxis: {format: 'decimal'},
	
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
	
	
	$(function() {
		$("#category1").load("../category.html #category1-1");
		
	})
	$(document).on("change", "#category1 select", function() {
			$("#category2").empty();
			$("#category3").empty();
			$(".result").empty();
			var target = $(this).find("option:selected").attr("data-target"); //#category2-1
			$("#category2").load("../category.html " + target);
			
		})

		$(document).on("change", "#category2 select", function() {
			var value2 = $("#category2 select").val();
			
			if(value2=='년/월'){
				function chartDraw() {
					$.ajax({
							url : "${pageContext.request.contextPath}/management/chart.do",
							type : "post",
							data : {
							},
							dataType : "json",
							success : function(json) {
								console.log(json);
			
								arr[0] = new Array();
								arr[0][0] = "년/월";
			
								for (var i = 1; i < Number(nowDate.getFullYear())
										- Number(year) + 2; i++) {
									arr[0][i] = Number(nowDate.getFullYear()) - i
											+ 1 + "년";
								}

							for (var i = 1; i < 13; i++) {
								arr[i] = new Array();
								arr[i][0] = i;
								for (var j = 1; j < Number(nowDate
										.getFullYear())
										- Number(year) + 2; j++) {
									arr[i][j] = 0;
								}
							}

							console.log(arr);

							for (var i = 0; i < json.length; i++) {
								var date = new Date(json[i].wReserveTime);
								for (var j = 1; j < Number(nowDate
										.getFullYear())
										- Number(year) + 2; j++) {
									if (date.getFullYear() == arr[0][j].slice(
											0, 4)) {
										arr[date.getMonth() + 1][j] += Number(arr[
												date.getMonth() + 1, j])
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
					})
				}
			
				$("#add").click(function() {
				year--;
				
				chartDraw();
				
				
				
				})
				
				$("#sub").click(function() {
					if (year != nowDate.getFullYear())
						year++;
					
					chartDraw();
				})
				year++;
				$("#add").click();
			}else if("월/일"){
				function chartDraw() {
					$.ajax({
						url : "${pageContext.request.contextPath}/management/chart.do",
						type : "post",
						data : {
						},
						dataType : "json",
						success : function(json) {
							console.log(json);
		
							arr[0] = new Array();
							arr[0][0] = "월/일";
							alert(nowDate.getMonth())
							alert(month)
							for (var i = 1; i < Number(nowDate.getMonth())-Number(month) + 2; i++) {
								arr[0][i] = Number(nowDate.getMonth()) - i+1 + "월";
							}
							
						for (var i = 1; i < 32; i++) {
							arr[i] = new Array();
							arr[i][0] = i;
							for (var j = 1; j < Number(nowDate.getMonth())-Number(month) + 2; j++) {
								arr[i][j] = 0;
							}
						}

						console.log(arr);


						for (var i = 0; i < json.length; i++) {
							var date = new Date(json[i].wReserveTime);
							for (var j = 1; j < Number(nowDate.getMonth())- Number(month) + 2; j++) {
								if (date.getMonth() == arr[0][j].slice(0,arr[0][j].indexOf("월"))) {
									arr[date.getDate() + 1][j] += Number(arr[date.getDate(), j]) + json[i].wPriceTotal != null ? Number(json[i].wPriceTotal): 0;
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
					})
				}
			
				$("#add").click(function() {
				month--;
				
				chartDraw();
				
				
				
				})
				
				$("#sub").click(function() {
					if (year != nowDate.getFullYear())
						year++;
					
					chartDraw();
				})
				month++;
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
</section>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	
</script>

<%@ include file="../../include/footer.jsp"%>