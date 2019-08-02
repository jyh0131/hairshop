<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
<style>
	*{
		padding:0;
		margin:0;
	}
	section{
		width: 70%;
		margin: 0 auto;
	}
	.hair{
		float:left;
		width: 230px;
		padding:10px;
	}
	img{
		width: 175px;
		height:261px;
	}
	a{
		text-decoration: none;
		color:black;
	}
	#hairlist{
		margin:0 auto;
		background-color: #EAEAEA;
		width: 40%;
		height:30px;
		clear: both;
		margin-bottom: 30px;
	}
	#hairlist ul{
		list-style:none;
		width:100%;
		
	}
	#hairlist ul li{
		float: left;
		width: 25%;
		height: 30px;
		line-height: 30px;
		text-align: center;
		font-family: 'Anton', sans-serif;
		
	}	
	/* #hairlist ul li a{
		border: 1px solid black;
		border-radius: 5px;
	} */
</style>
<section>
	
	<div id="hairlist">
		<ul>
			<li><a href="">cut</a></li>
			<li><a href="">perm</a></li>
			<li><a href="">color</a></li>
			<li><a href="">care</a></li>
		</ul>
	</div>
	
	
	<div id="cut">
		<div class="hair">
			<a href="">
				<img src="../images/hair/feminine.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/hug.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/hush.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/sand.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/tassel.png">
			</a>
		</div>
	</div>

	<div id="perm">
		<div class="hair">
			<a href="">
				<img src="../images/hair/balloon.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/build.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/diann.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/egg.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/rain.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/hair/ruffle.png">
			</a>
		</div>	
	</div>
	
	<div id="color">
		<div class="hair">
			<a href="">
				<img src="../images/color/babybrown.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/brickorange.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/midnightblue.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/olivebrown.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/ororared.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/peachbrown.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/skinbrown.png">
			</a>
		</div>
	</div>
	
	<div id="care">
		<div class="hair">
			<a href="">
				<img src="../images/care/ample.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/care/massage.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/care/sense.png">
			</a>
		</div>
		
	</div>
	






</section>
<%-- <%@ include file="../include/footer.jsp" %>
 --%>






