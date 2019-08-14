<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ytmultiple.css"	type="text/css">

<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


<style>
@media screen and (min-width:1200px){
#topDiv{
		height: 100%;
	}
	#div1 {
		background-color: white;
		top:0;
		width: 100%;
		opacity: 0.9;
		z-index: 1;
		position: fixed;
	}

	.wrap_home{
		min-width: 100%;
		margin:0 auto;
		height: 593px;
		position: relative;
	}  
	.wrap_home img{
		min-width:800px;
		height: 500px;
		margin: 0 auto;
	}
	.bxslider div{
		background-color: lightgray;
	}
	#images{
		min-width: 70%;
		margin: 0 auto;
		height: 900px;
	}
	#images div{
		float:left;
		width: 230px;
		padding:10px;
	}
	#images img{
		min-width: 175px;
		height:261px;
	}
	#images a{
		text-decoration: none;
		color:black;
	}
	
	#section{
		height: 2954px;
	}
	
	.lead {
	margin: 150px auto 600px auto;
	}
	
	
	
	.parallaxContainer {
		background-repeat: no-repeat;
		background-size: cover;
		background-attachment: fixed;
		height: 937px;
	}
	
	.example1 {
		background-image: url(http://www.chahongardor.com/wp-content/uploads/2019/02/ardor_.jpg);
	}
	
	.example2 {
	 		background-image: url(http://www.chahongardor.com/wp-content/uploads/2019/02/ardor_8.jpg);
 	}
	
	
	
	#managerDiv{
		background: url(http://www.chahongardor.com/wp-content/uploads/2019/02/2018-19-ss9.jpg);
		background-repeat:no-repeat;
		background-size:100% 100%;
				
		width:80%;
		height: 400px;
		margin:0 auto;
		text-align: center;
		padding:10%;
	}
	#managerDiv article h2{
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
		margin-top:10px;
	
	}
	
	
	
	#managerDiv article{
		float:left;
		margin:10px;
		width:30%;
		background:rgba(255,255,255,0.7);
		height:300px;
		border: 1px solid black;
		border-radius: 10px;
	}

}

@media all and (max-width:1199px){
	#topDiv{
		height: 100%;
	}
	#div1 {
		background-color: white;
		top:0;
		width: 100%;
		opacity: 0.9;
		z-index: 1;
		position: fixed;
	}

	.wrap_home{
		min-width: 100%;
		margin:0 auto;
		height: 312px;
		position: relative;
	}  
	.wrap_home img{
		min-width:360px;
		height: 300px;
		margin: 0 auto;
	}
	.bxslider div{
		background-color: lightgray;
	}
	#images{
		min-width: 70%;
		margin: 0 auto;
		height: 900px;
	}
	#images div{
		float:left;
		width: 230px;
		padding:10px;
	}
	#images img{
		min-width: 175px;
		height:261px;
	}
	#images a{
		text-decoration: none;
		color:black;
	}
	
	#section{
		height: 640px;
	}
	
	.lead {
	margin: 150px auto 600px auto;
	}
	
	
	
	.parallaxContainer {
		background-repeat: no-repeat;
		background-size: cover;
		background-attachment: fixed;
		height: 937px;
	}
	
	.example1 {
		background-image: url(http://www.chahongardor.com/wp-content/uploads/2019/02/ardor_.jpg);
		background-size: 100% 100%;
	}
	
	.example2 {
	 		background-image: url(http://www.chahongardor.com/wp-content/uploads/2019/02/ardor_8.jpg);
	 		background-size: 360px;
	 		display: none;
 	}
	
	.mov_box {
	position: relative;
	width: 100%;
	height: 63%;
	overflow: hidden;
	display: none;  
}     
	
	#managerDiv{
		background: url(http://www.chahongardor.com/wp-content/uploads/2019/02/2018-19-ss9.jpg);
		background-repeat:no-repeat;
		background-size:100% 100%;
				
		width:80%;
		height: 400px;
		margin:0 auto;
		text-align: center;
		padding:10%;
	}
	#managerDiv article h2{
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
		margin-top:10px;
	
	}
	
	
	
	#managerDiv article{
		float:left;
		margin:10px;
		width:30%;
		background:rgba(255,255,255,0.7);
		height:300px;
		border: 1px solid black;
		border-radius: 10px;
	}

}
	
	@media all and (max-width:1000px){
		#managerDiv{
			padding:10%;
			height: 1000px;
			margin:0;
		}
		#managerDiv article{
			width:100%;
			
		}
	
	}
	
	
</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha384-vk5WoKIaW/vJyUAd9n/wmopsmNhiy+L2Z+SBxGYnUkunIxVxAv/UtMOhba/xskxh"
        crossorigin="anonymous">
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://www.youtube.com/player_api"></script>



<script>
	// YouTube ID
	var ytPlayList = [ {
		id : "player1",
		VideoId : "OYttd9GgVoM"     /* OYttd9GgVoM *//* bFiaiFBuy2I */
	} ];
	
	

	
	//slider
	$(function(){
		  $('.bxslider').bxSlider({
			auto:true,
		    mode: 'fade',
		    captions: true,
		    slideWidth: 1900,
		    pause:2000,
		  });
		});
	
	/* $(function() {
		var headerOffsetTop = $("#div1").offset().top;
		
		$(window).on("scroll", function () {
			var top = $(window).scrollTop();//scroll top값
			
			if(top > headerOffsetTop){
				$("#div1").addClass("sticky-header");
			}else{
				$("#div1").removeClass("sticky-header");
			}
		})
	}) */
</script>


<body onKeyDown='key_check();'>
	<div id="topDiv">
		<div>
			<div id="section">
				<div class="example1 parallaxContainer">
					
				</div>	
				
				<div class="example2 parallaxContainer">
					
				</div>
				
				<div class="mov_box">
				<!-- YouTube position -->
					<div class="yt_wrap">
						<div id="player1" class="yt_box"></div>
					</div>
				</div>
				
			</div>
			
			<div id=div1><%@ include file="../include/header.jsp"%></div>
			<div class="jquery-script-center">
				
			</div>
			
			
		
		</div>
		
			
		<div id="managerDiv">
				<article>
					<div><%@ include file="board/managerBoard.jsp"%></div>
				</article>
				<article>
					<div><%@ include file="event/nowFastEvent.jsp" %></div>
				</article>
				<article>
					<div>이슈이슈</div>
				</article>
		</div>
		
		
		
	
		
		<div class="wrap_home">
			<div class="bxslider"> 
			    <div><img src="${pageContext.request.contextPath }/images/hair/33.jpg" title="Korea Nail Cup"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/44.jpg" title="Korea Nail Expo Cup"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/55.jpg" title="K-Beauty Olympic"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/66.jpg" title="대구국제뷰티엑스포"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/77.jpg" title="스타킹월드뷰티콘테스트"></div>
			</div>
		</div>
	
	</div>
	
	<script src="${pageContext.request.contextPath}/js/ytmultiple.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script>

	</script>
	
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	
	
	<script>
		$('.parallaxContainer').slim_parallax({
			speed : 10
		});
	</script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	
</body>

<%@ include file="../include/footer.jsp"%>







































































































































































































































































































































































































































































































































































































































































































































































































































































