<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
@media screen and (min-width:1200px){
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
		cursor: pointer;
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
		cursor: pointer;
	}
	
	#top{
		clear: both;
		margin:0 auto;
		font-size: 15px;
		color:black;
		border-radius: 5px;
		background-color: #ccc;
		width: 5%;
		height:30px;
		text-align:center;
		margin-bottom: 100px;
		position: fixed;
		bottom: 400px;
		right:350px;
		cursor: pointer;
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
	.detail{
		display: none;
		z-index:100;
		position:fixed;
		left:0;
		top:0;
		width:900px;
		height: 1000px;
		background: rgba(0,0,0,0.9);
		padding:20px 30%;
		display: none;
		color:#D5D5D5;
	}
	.detailhair{
		width: 675px;
		height: 900px;
		position: relative;
	}
	.detailclose{
		cursor:pointer;
		position: absolute;
		bottom: 120px;
		right: 750px;
	}
	.detail .detailcolor{
		width: 675px !important;
		height: 900px !important;
	}
	}
	@media all and (max-width:1199px){/*-------------------------------------------모바일 -------------------------------------------- */
	*{
		padding:0;
		margin:0;
	}
	section{
		width: 90%;
		margin: 0 auto;
		/* padding-top: 40px; */
	}
	.hair{
		float:left;
		width: 159px;
		height:210px;
		padding-bottom: 30px;
	}
	.hair .smallhair{
		width: 149px;
		height:210px;
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
		margin-top: 60px;
		margin-bottom: 60px;
	}
	#hairlist ul{
		list-style:none;
	}
	#hairlist ul li{
		float: left;
		width: 33%;
		height: 30px;
		line-height: 30px;
		text-align: center;
		font-size:15px;
		
	}	
	#color > p{
		color:#AB8212;
		font-size: 10px;
	}
	#top{
		clear: both;
		margin:0 auto;
		color:black;
		background-color: #F6F6F6;
		width: 5%;
		height:30px;
		text-align:center;
		margin-bottom: 100px;
		position: fixed;
		bottom: -80px;
		right:4px;
	}
	#top #topBtn{
		font-size: 11px;
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
	#color .smallhair{
		width: 142px !important;
		height: 210px !important;
	}
	#color .hair{ /* 컬러의 div */
		width: 160px;
		height:250px;
		padding-bottom: 30px;
	}
	.detail{
		display: none;
		z-index:100;
		position:fixed;
		left:-100px;
		top:0;
		width:360px;
		height: 640px;
		background: rgba(0,0,0,0.9);
		padding:20px 30%;
		display: none;
		color:#D5D5D5;
	}
	.detailhair{
		width:340px;
		height: 500px;
		position: relative;
	}
	.detailclose{
		text-align: right;
		padding-right: 15px;
	}
	.detail .detailcolor{
		width: 340px !important;
		height: 500px !important;
	}
	#color #colorhangle5, #colorhangle4, #colorhangle3, #colorhangle2, #colorhangle1, #colorhangle{
		display: none;
	}
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
			<img src="../images/cut/feminine.png" class="smallhair">
				<div class="detail"><!-- 제이쿼리 클릭하면 헤어 상세보기 창 -->
					<img src="../images/cut/feminine.jpg" class="detailhair">
					<div class="detailclose">[닫기]</div>
				</div>
		</div>	
		<div class="hair">
			
				<img src="../images/cut/hug.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/hug.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/cut/hush.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/hush.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/cut/sand.png" class="smallhair">
			<div class="detail">
				<img src="../images/cut/sand.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/cut/tassel.png" class="smallhair"> 
			<div class="detail">
				<img src="../images/cut/tassel.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/bebe.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/bebe.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/bird.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/bird.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/bonnie.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/bonnie.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
		
				<img src="../images/cut/born.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/born.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/brooke.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/brooke.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/build.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/build.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/frill.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/frill.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
		
				<img src="../images/cut/gureum.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/gureum.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/hole.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/hole.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/humming.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/humming.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
		
				<img src="../images/cut/lea.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/lea.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
			<div class="hair">
			
				<img src="../images/cut/mods.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/mods.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/ruffle.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/ruffle.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
			
				<img src="../images/cut/smooth.png" class="smallhair">
				<div class="detail">
				<img src="../images/cut/smooth.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
		
				<img src="../images/cut/v.png" class="smallhair">
					<div class="detail">
				<img src="../images/cut/v.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
	</div>
	<!-- 펌사진 -->	
	<div id="perm">
		<div class="hair">
			
				<img src="../images/perm/balloon.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/balloon.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/build.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/build.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/diann.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/diann.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/egg.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/egg.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
		
				<img src="../images/perm/rain.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/rain.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/ruffle.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/ruffle.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/air.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/air.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
		
				<img src="../images/perm/alice.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/alice.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/cotton.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/cotton.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/easy.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/easy.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
			
				<img src="../images/perm/feminine.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/feminine.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/flower.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/flower.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/frill.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/frill.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/hole.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/hole.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/hug.png" class="smallhair">
		<div class="detail">
				<img src="../images/perm/hug.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/jelly.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/jelly.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/pleats.png" class="smallhair">
			<div class="detail">
				<img src="../images/perm/pleats.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/fog.png" class="smallhair">
		<div class="detail">
				<img src="../images/perm/fog.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
				<img src="../images/perm/tammy.png" class="smallhair">
		<div class="detail">
				<img src="../images/perm/tammy.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>	
		<div class="hair">
				<img src="../images/perm/wind.png" class="smallhair">
	<div class="detail">
				<img src="../images/perm/wind.jpg" class="detailhair">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
	</div>
	
	<!-- 염색컬러사진 -->	
	<div id="color">
		<div class="hair">
				<img src="../images/color/babybrown.png" class="smallhair">
			<p id="bb">Baby Brown <span id="colorhangle">베이비브라운</span></p> 
			<div class="detail">
				<img src="../images/color/bb.jpg" class="detailcolor">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
				<img src="../images/color/skinbrown.png" class="smallhair">
			<p id="sb">Skin Brown <span id="colorhangle1">스킨브라운</span></p>
			<div class="detail">
				<img src="../images/color/sb.jpg" class="detailcolor">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
				<img src="../images/color/olivebrown.png" class="smallhair">
			<p id="ob">Olive Brown <span id="colorhangle2">올리브브라운</span></p>
			<div class="detail">
				<img src="../images/color/ob.jpg" class="detailcolor">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
				<img src="../images/color/ororared.png" class="smallhair">
			<p id="ar">Aurora Red <span id="colorhangle3">오로라레드</span></p>
			<div class="detail">
				<img src="../images/color/ar.jpg" class="detailcolor">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
				<img src="../images/color/peachbrown.png" class="smallhair">
			<p id="pb">Peach Brown <span id="colorhangle4">피치브라운</span></p>
			<div class="detail">
				<img src="../images/color/pb.jpg" class="detailcolor">
				<div class="detailclose">[닫기]</div>
			</div>
		</div>
		<div class="hair">
				<img src="../images/color/midnightblue.png" class="smallhair">
			<p id="mb">Midnight Blue <span id="colorhangle5">미드나잇블루</span></p>
			<div class="detail">
				<img src="../images/color/mb.jpg" class="detailcolor">
				<div class="detailclose">[닫기]</div>
			</div>
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
			var offset = $(".hair").eq(0).offset();
			$('html,body').animate({
				scrollTop:offset.top}, 600);
		})
		$("#hairPerm").click(function(){
			var offset = $(".hair").eq(21).offset();
			$('html,body').animate({
				scrollTop:offset.top}, 2000);
		})
		$("#hairColor").click(function(){ /* color로 이동 */
			var offset = $(".hair").eq(40).offset();
			$('html,body').animate({
				scrollTop:offset.top}, 2000);
		})
		
		/* 헤어 클릭하면 상세보기 */
		$(".hair").click(function(){
			$(this).find(".detail").fadeIn(500);
		})
		/* 상세보기 창 닫어라 */
		$(document).on("click", ".detailclose", function(){
			$(this).parent().fadeOut(500);
		})
		
		
	})
</script>
<%@ include file="../include/footer.jsp" %>
















