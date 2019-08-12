<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>

<style>
	section{
		clear: both;
		width:1080px;
		margin: 0 auto;
	}
	
</style>
<section>
	<div id="curve_chart" style="width: 1100px; height: 500px"></div>
	<button id="add">추가</button>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	$(function() {
		var nowDate=new Date();
		var data;
		var arr=new Array();
		var options = {
				title : '총 매출 통계',
				curveType : 'function',
				legend : {
					position : 'bottom'
				}
			};
		
		$.ajax({
			url : "${pageContext.request.contextPath}/management/chart.do",
			type : "post",
			dataType : "json",
			success : function(json) {
				console.log(json);
				
				arr[0]=['Month',nowDate.getFullYear()+"년"];
				for(var i=1; i<13; i++){
					arr[i]=new Array();
					for(var j=1; j<2; j++){
						arr[i][0]=i;
						arr[i][j]=0;
					}
				}
				
				
				console.log(arr)
				
				/* arr= [
					['Month',nowDate.getFullYear()+"년"],
					[1,0],
					[2,0],
					[3,0],
					[4,0],
					[5,0],
					[6,0],
					[7,0],
					[8,0],
					[9,0],
					[10,0],
					[11,0],
					[12,0]
				] */
				
				console.log(arr);
				
				
				for(var i=0; i<json.length; i++){
					var date=new Date(json[i].wReserveTime);
					arr[date.getMonth()][1]=Number(arr[date.getMonth(),1])+json[i].wPriceTotal!=null ? Number(json[i].wPriceTotal):0;
					
				}
				console.log(arr);
				
				
				
				google.charts.load('current', {
					'packages' : [ 'corechart' ]
				});
				
				google.charts.setOnLoadCallback(drawChart);
				
				
			}
		})
		
		
		function drawChart() {
					data = google.visualization.arrayToDataTable(
						/* 	[
								[ 'Month', 'Sales', 'Expenses' ],
								[ '1', 1000, 400 ],
								[ '2', 1170, 460 ],
								[ '3', 660, 1120 ],
								[ '4', 1030, 540 ] 
							] */
					arr
					);

					

					var chart = new google.visualization.LineChart(document
							.getElementById('curve_chart'));

					chart.draw(data, options);
				}
		
		
		
		$("#add").click(function() {
			$.ajax({
				url : "${pageContext.request.contextPath}/management/chart.do",
				type : "post",
				dataType : "json",
				success : function(json) {
					console.log(json);
					
					arr= [
						['Month','2019년'],
						[1,0],
						[2,0],
						[3,0],
						[4,0],
						[5,0],
						[6,0],
						[7,0],
						[8,0],
						[9,0],
						[10,0],
						[11,0],
						[12,0]
					]
					
					console.log(arr);
					
					
					for(var i=0; i<json.length; i++){
						var date=new Date(json[i].wReserveTime);
						arr[date.getMonth()][1]=Number(arr[date.getMonth(),1])+json[i].wPriceTotal!=null ? Number(json[i].wPriceTotal):0;
						
					}
					console.log(arr);
					
					
					
					google.charts.load('current', {
						'packages' : [ 'corechart' ]
					});
					
					google.charts.setOnLoadCallback(drawChart);
					
					
				}
			})
			
			google.charts.setOnLoadCallback(drawChart);
			
		})
		$("#sub").click(function() {
			arr= [
				['Month','2019년'],
				[1,0],
				[2,0],
				[3,0],
				[4,0],
				[5,0],
				[6,0],
				[7,0],
				[8,0],
				[9,0],
				[10,0],
				[11,0],
				[12,0]
			]
			
			
			google.charts.setOnLoadCallback(drawChart);
			
		})
		
	})
	
</script>

<%@ include file="../../include/footer.jsp"%>