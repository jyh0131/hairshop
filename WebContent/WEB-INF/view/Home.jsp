<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<style>
	*{
		padding:0;
		margin:0;
	}
	#wrap{
		width: 1920px;
		margin:0 auto;
	}
	#wrap img{
		width:1920px;
		height: 593px;
	}
	#images{
		width: 70%;
		margin: 0 auto;
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
		    slideWidth: 1920,
		    pause:2000,
		    autoControls:true
		  });
		});
</script>

</head>
<body>
	<form>
		<div id="wrap">
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
	</form>
</body>
</html>