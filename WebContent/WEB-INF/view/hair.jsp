<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
<style>
	*{
		padding:0;
		margin:0;
	}
	section{
		width: 70%;
		margin: 0 auto;
		padding-top: 40px;
	}
	#hairByAll{
		width: 80%;
		margin:0 auto;
		padding-left: 160px;
	}
	.hair{
		float:left;
		width: 230px;
		padding:10px;
	}
	section img{
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
	#color .hair img{
		width: 175px;
		height: 242px;
	}
	#color > p{
		color:#AB8212;
		font-size: 13px;
	}
	
</style>
<section>
	
	<div id="hairlist">
		<ul>
			<li><a href=".cut">cut</a></li>
			<li><a href="#perm" class="go_btn">perm</a></li>
			<li><a href=".color">color</a></li>
			<li><a href=".care">care</a></li>
		</ul>
	</div>
	
	<div id="hairByAll">
	<!-- 커트사진 -->	
	<div id="cut">
		<div class="hair">
			<a href="">
				<img src="../images/cut/feminine.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/cut/hug.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/cut/hush.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/cut/sand.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/cut/tassel.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/bebe.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/bird.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/bonnie.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/born.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/brooke.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/build.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/frill.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/gureum.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/hole.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/humming.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/lea.png">
			</a>
		</div>
			<div class="hair">
			<a href="">
				<img src="../images/cut/mods.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/ruffle.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/smooth.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/cut/v.png">
			</a>
		</div>
	</div>
	<!-- 펌사진 -->	
	<div id="perm">
		<div class="hair">
			<a href="">
				<img src="../images/perm/balloon.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/build.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/diann.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/egg.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/rain.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/ruffle.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/air.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/alice.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/cotton.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/easy.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/feminine.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/flower.png">
			</a>
		</div>	
	
			<div class="hair">
			<a href="">
				<img src="../images/perm/frill.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/hole.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/hug.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/jelly.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/pleats.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/pog.png">
			</a>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/perm/tammy.png">
			</a>
		</div>	
		<div class="hair">
			<a href="">
				<img src="../images/perm/wind.png">
			</a>
		</div>
	</div>
	
	<!-- 염색컬러사진 -->	
	<div id="color">
		<div class="hair">
			<a href="">
				<img src="../images/color/babybrown.png">
			</a>
			<p>Baby Brown</p> 
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/skinbrown.png">
			</a>
			<p>Skin Brown <span id="colorsize2">스킨 브라운</span></p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/olivebrown.png">
			</a>
			<p>Olive Brown</p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/ororared.png">
			</a>
			<p>Aurora Red</p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/peachbrown.png">
			</a>
			<p>Peach Brown</p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/midnightblue.png">
			</a>
			<p>Midnight Blue</p>
		</div>
	</div>
	</div>






</section>
<%@ include file="../include/footer.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script>
	$(function(){
		var jj = $("#perm").offset();
		
		$(".go_btn").click(function(event){
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},500);
		});
		
	})
</script>





