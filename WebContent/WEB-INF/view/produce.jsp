<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Cutive+Mono&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Libre+Caslon+Display&display=swap" rel="stylesheet">
<style>
	h3{
		text-align: center;
		color:gray;
		margin-bottom: 40px;
		margin-top:40px;
		font-family: 'Libre Caslon Display', serif;
	}
	section{
		width: 50%;
		margin:0 auto;
	}
	#explain{
		margin-bottom: 40px;

	}
	#table1{
		background-color: #EAEAEA;
	}
	table{
		border: none;
		padding: 10px 0 10px 20px;
	
	}
	#chahongimg{
		margin-top: 40px;
		width: 950px;
	}
	#designer{
		
		width: 100%;
		margin:0 auto;
	}
	.designerArticle{
		float:left;
		width:20%;
		height:300px;
		padding: 20px 20px 60px 20px;
	}
	.designerArticle p{
		font-size: 14px;
		color:#ccc;
	}
	#staff{
		margin-top:40px;
		width: 100%;
		height:50px;
		color:#ccc;
	}
	#staff #stafftext{
		text-align: center;
		font-family: 'Cutive Mono', monospace;
		font-size: 15px;
		color:#ccc;
	}
	.profile a{
		text-decoration:none;
		font-weight: bold;
		color:#ccc;
		font-family: 'Cutive Mono', monospace;
	}
		
	
</style>
<section>

	<h3>
		CHAHONG ARDOG DOSAN
	</h3>
	<div id="explain">
		한국인 최초 로레알 프로페셔널 파리의 세계적인 아티스트로 선정된 차홍원장이 이끄는 청담동미용실 차홍아르더 도산점, 본점, 청담점은 헤어, 메이크업 ,네일 전문가들이 
		수많은 셀렙들의 스타일은 물론 가장 트랜디한 스타일과 프라이빗한 고급서비스를 전달하는 공간입니다. 
		2015, 2016, 2017, 2018년년 연속 국가브랜드 대상을 수상한 차홍에서 그동안 경험하지 못했던 최상의 서비스와 디자인을 만나보세요.		
	</div>
	<div>
		<div id="table1">
			<table>
				<tr>
					<td>문의전화</td>
					<td>&nbsp;&nbsp;&nbsp;053.545.8520</td>
				</tr>
				<tr>
					<td>e-mail</td>
					<td>&nbsp;&nbsp;&nbsp;pr@chahong.kr</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>&nbsp;&nbsp;&nbsp;대구광역시 서구 서대구로7길 2</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<img src="../images/etc/chahong.png" id="chahongimg">
	</div>
	<div id="staff">
		――――――――――――――――――――――――――― <span id="stafftext">Staff</span> ――――――――――――――――――――――――――――
	</div>
	<div id="designer">
		<div class="designerArticle" id="han">
			<img src="../images/designer/hanps.png">
			<p>한필수 원장</p>
			<p class="profile"><a href="">profile</a></p><!-- 마우스오버 나타나도록.클릭시  -->
		</div>
		<div class="designerArticle">
			<img src="../images/designer/gosy.png">
			<p>고선영 실장</p>
			<p class="profile"><a href="">profile</a></p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/hanyl.png">
			<p>한상아 실장</p>
			<p class="profile"><a href="">profile</a></p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/jangsy.png">
			<p>장소연 디자이너</p>
			<p class="profile"><a href="">profile</a></p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/anjh.png">
			<p>안장희 디자이너</p>
			<p class="profile"><a href="">profile</a></p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/jungjw.png">
			<p>정재우 디자이너</p>
			<p class="profile"><a href="">profile</a></p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/juran.png">
			<p>주란 디자이너</p>
			<p class="profile"><a href="">profile</a></p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/kimgb.png">
			<p>김가빈 디자이너</p>
			<p class="profile"><a href="">profile</a></p>
		</div>
	</div>


</section>
<%@ include file="../include/footer.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script>
	$(function(){
		$("#han").mouseover(function(){
			$("#han").addClass("profile");
			
		})
		
		$("#han").hover(function(){
			$("#han").$("#profile")text("마우스");
		})
	})
</script>













