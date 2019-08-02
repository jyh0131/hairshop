<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<style>
	
	.wrap_home{
		width: 1900px;
		margin:0 auto;
		height: 593px;
	}
	.wrap_home img{
		width:1900px;
		height: 593px;
	}
	#images{
		width: 70%;
		margin: 0 auto;
		height: 900px;
	}
	#images div{
		float:left;
		width: 230px;
		padding:10px;
	}
	#images img{
		width: 175px;
		height:261px;
	}
	#images a{
		text-decoration: none;
		color:black;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(function(){
		  $('.bxslider').bxSlider({
			auto:true,
		    mode: 'fade',
		    captions: true,
		    slideWidth: 1900,
		    pause:2000,
		    autoControls:true
		  });
		});
	
	$(function(){
		  $('.bxslider2').bxSlider({
			auto:true,
		    mode: 'horizontal',
		    captions: true,
		    slideWidth: 1900,
		    pause:2000,
		    autoControls:true
		  });
		});
</script>

	<section>
		<div class="wrap_home">
			<div class="bxslider">
			    <div><img src="${pageContext.request.contextPath }/images/hair/1.png" title="1"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/2.png" title="2"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/3.png" title="3"></div>
			</div>
		</div>
		
		<div id="images">
			<div>
				<a href="">
					<img src="../images/hair/balloon.png">
				</a>
			</div>
		
			<div>
				<a href="">
					<img src="../images/hair/build.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/diann.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/egg.png">
				</a>
			</div>
				
			<div>
				<a href="">
					<img src="../images/hair/feminine.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/hug.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/hush.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/rain.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/ruffle.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/sand.png">
				</a>
			</div>	
			
			<div>
				<a href="">
					<img src="../images/hair/tassel.png">
				</a>
			</div>
		</div>
		
		<div class="wrap_home">
			<div class="bxslider2"> 
			    <div><img src="${pageContext.request.contextPath }/images/hair/4.png" title="4"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/5.png" title="5"></div>
			  	<div><img src="${pageContext.request.contextPath }/images/hair/6.png" title="6"></div>
			</div>
		</div>
	</section>
<%@ include file="../include/footer.jsp"%>