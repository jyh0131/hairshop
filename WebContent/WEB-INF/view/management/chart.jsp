<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/header.jsp"%>

<style>
	div#curve_chart{
		clear: both;
	}
</style>
<section>
	<div id="curve_chart" style="width: 900px; height: 500px"></div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	$(function() {
		
		var arr= [[],[]]; //배열선언

		arr[0][0] = 1;
		arr[0][1] = 2;
		arr[0][2] = 3;
		arr[0][3] = 4;
		arr[0][4] = 5;	

		console.log(arr);
		
		for(var i=0; i<5; i++){
		    arr[i][0] = 12;
		}
		
		
		
		console.log(arr);
		
		var data;

		$.ajax({
			url : "${pageContext.request.contextPath}/management/chart.do",
			type : "post",
			dataType : "json",
			success : function(json) {
				console.log(json);
				
				google.charts.load('current', {
					'packages' : [ 'corechart' ]
				});
				
				google.charts.setOnLoadCallback(drawChart);
				
				function drawChart() {
					data = google.visualization.arrayToDataTable(
							[
								[ 'Month', 'Sales', 'Expenses' ],
								[ '2004', 1000, 400 ],
								[ '2005', 1170, 460 ],
								[ '2006', 660, 1120 ],
								[ '2007', 1030, 540 ] 
							]
					
					);

					var options = {
						title : '총 매출 통계',
						curveType : 'function',
						legend : {
							position : 'bottom'
						}
					};

					var chart = new google.visualization.LineChart(document
							.getElementById('curve_chart'));

					chart.draw(data, options);
				}
			}
		})
	})
</script>
<%@ include file="../../include/footer.jsp"%>