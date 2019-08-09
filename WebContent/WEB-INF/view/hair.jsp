<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
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
		padding:10px 10px 30px 10px;
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
		background-color: #F6F6F6;
		width: 40%;
		height:30px;
		clear: both;
		margin-bottom: 60px;
	}
	#hairlist ul{
		list-style:none;
		width:100%;
	}
	#hairlist ul li{
		float: left;
		width: 33%;
		height: 30px;
		line-height: 30px;
		text-align: center;
		font-size:15px;
	}	
	#color .hair img{
		width: 175px;
		height: 242px;
	}
	#color > p{
		color:#AB8212;
		font-size: 13px;
	}
	#hairlist ul li:hover{
		font-size: 20px;
		background: black;
		border-radius: 5px;
		color:white;
	}
	
	/*  */
	
	#top{
		clear: both;
		margin:0 auto;
		font-size: 15px;
		color:black;
		border-radius: 5px;
		background-color: #F6F6F6;
		width: 18%;
		height:30px;
		text-align:center;
		margin-bottom: 100px;
	}
	#top:hover{
		background: black;
		color:white;
		font-size: 20px;
	}
	button #haircut{
		background-color: black;
		color:white;
	}
	#color {
		font-size: 13px;
	}
	#color #bb{
		color:#754C00;
		text-align: right;
		padding-right: 50px;
	}
	#color #sb{
		color:#302600;
		text-align: right;
		padding-right: 50px;
	}
	#color #ob{
		color:#665C00;
		text-align: right;
		padding-right: 50px;
	}
	#color #ar{
		color:#670000;
		text-align: right;
		padding-right: 50px;
	}
	#color #pb{
		color:#BA2B2B;
		text-align: right;
		padding-right: 50px;
	}
	#color #mb{
		color:#060042;
		text-align: right;
		padding-right: 50px;
	}
</style>
<section>
	
	<div id="hairlist">
		<ul>
			<li id="hairCut">cut</li>
			<li id="hairPerm">perm</li>
			<li id="hairColor">color</li>
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
			<p id="bb">Baby Brown 베이비브라운</p> 
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/skinbrown.png">
			</a>
			<p id="sb">Skin Brown 스킨브라운</p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/olivebrown.png">
			</a>
			<p id="ob">Olive Brown 올리브브라운</p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/ororared.png">
			</a>
			<p id="ar">Aurora Red 오로라레드</p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/peachbrown.png">
			</a>
			<p id="pb">Peach Brown 피치브라운</p>
		</div>
		<div class="hair">
			<a href="">
				<img src="../images/color/midnightblue.png">
			</a>
			<p id="mb">Midnight Blue 미드나잇블루</p>
		</div>
	</div>
	<div id="top">
  		<span id="topBtn">top</span>
	</div>
	</div>






</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$("#topBtn").click(function(){ /* top으로 이동 */
			$('html,body').animate({
				scrollTop:0}, 1000);
		})
		$("#hairCut").click(function(){ /* cut로 이동 */
			$('html,body').animate({
				scrollTop:300}, 600);
		})
		$("#hairPerm").click(function(){
			$('html,body').animate({
				scrollTop:1800}, 2000);
		})
		
		$("#hairColor").click(function(){ /* color로 이동 */
			$('html,body').animate({
				scrollTop:5000}, 2000);
		})
	})
	
	
	
</script>
<%@ include file="../include/footer.jsp" %>
















