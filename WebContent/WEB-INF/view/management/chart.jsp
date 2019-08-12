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
	<button id="sub">삭제</button>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	$(function() {
		var nowDate=new Date();
		var data;
		var year=nowDate.getFullYear();
		var arr=new Array();
		var options = {
				title : '총 매출 통계',
				curveType : 'function',
				legend : {
					position : 'bottom'
				}
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
					arr
					);

					

					var chart = new google.visualization.LineChart(document
							.getElementById('curve_chart'));

					chart.draw(data, options);
				}
		
		
		
		function chartDraw(){
			$.ajax({
				url : "${pageContext.request.contextPath}/management/chart.do",
				type : "post",
				data : {
					"year":year
				},
				dataType : "json",
				success : function(json) {
					console.log(json);
					
					arr[0]=new Array();
					arr[0][0]="month";
					
					for(var i=1; i<Number(nowDate.getFullYear())-Number(year)+2; i++){
						arr[0][i]=Number(nowDate.getFullYear())-i+1+"년";
					}
					
					
					for(var i=1; i<13; i++){
						arr[i]=new Array();
						arr[i][0]=i;
						for(var j=1; j<Number(nowDate.getFullYear())-Number(year)+2; j++){
							arr[i][j]=0;
						}
					}
					
					
					
					console.log(arr);
					
					
					for(var i=0; i<json.length; i++){
						var date=new Date(json[i].wReserveTime);
						for(var j=1; j<Number(nowDate.getFullYear())-Number(year)+2; j++){
							console.log(j)
							if(date.getFullYear()==arr[0][j].slice(0,4)){
								arr[date.getMonth()+1][j]=Number(arr[date.getMonth()+1,j])+json[i].wPriceTotal!=null ? Number(json[i].wPriceTotal):0;
							}
						}
						
						
					}
					
					
					
					google.charts.load('current', {
						'packages' : [ 'corechart' ]
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
			if(year!=nowDate.getFullYear())
				year++;
			
			chartDraw();
		})
		
		
		
		year++;
		$("#add").click();
		
	})
	
</script>

<%@ include file="../../include/footer.jsp"%>