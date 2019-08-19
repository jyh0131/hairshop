<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Cutive+Mono&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Libre+Caslon+Display&display=swap" rel="stylesheet">
<style>
	@media screen and (min-width:1200px){
	#h3{
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
		cursor: pointer;
	}
	.designerArticle p{
		font-size: 14px;
		font-weight:bold;
		color:#ccc;
		text-align: center;
		cursor: pointer;
	}
	#mobile{
		display: none;
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
	#hanPro, #goPro, #hansaPro, #jangPro, #anPro, #jungPro, #juPro, #kimPro {/* 프로필글씨검정색 */
		color:black;
	} 
	.profile {
		text-decoration:none;
		font-weight: bold;
		font-family: 'Cutive Mono', monospace;
		display: none;
		cursor: pointer;
	}
	.han{
		z-index:100;
		position:fixed;
		left:0;
		top:0;
		width:100%;
		height: 100%;
		background: rgba(0,0,0,0.9);
		padding:20px 30%;
		display: none;
		color:#D5D5D5;
	}
	.photo{
		width: 50%;
	}
	.han2{
		width: 600px;
	}
	.explain{
		width:50%;
		font-size: 14px;
		padding-bottom: 10px;
		position: absolute;
		top:550px;
		right:340px;
	}
	.close{
		cursor: pointer;
		background-color: #353535;
		width: 1000px;
		height: 30px;
		text-align: right;
		padding-right: 10px;
		margin-top: 10px;
	}
	#pp{
		font-weight: bold;
	}
	}
	@media all and (max-width:1199px){/*-------------------------------------------모바일 -------------------------------------------- */
	#h3{
		text-align: center;
		color:gray;
		margin-bottom: 40px;
		margin-top:40px;
		font-family: 'Libre Caslon Display', serif;
	}
	section{
		width: 90%;
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
		width: 100%;
	}
	#designer{
		width: 100%;
		margin:0 auto;
	}
	.designerArticle{
		float:left;
		width:40%;
		height:300px;
		cursor: pointer;
		padding-right: 30px;
	}
	.designerArticle img{
		width: 139px;
		height: 210px;
	}
	.designerArticle p{
		font-size: 14px;
		font-weight:bold;
		color:#ccc;
		text-align: center;
		cursor: pointer;
	}
	#screen{
		display: none;
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
	.profile {
		display: none !important;
	}
	.han{
		z-index:100;
		position:fixed;
		left:-100px;
		top:0;
		width:100%;
		height: 100%;
		background: rgba(0,0,0,0.9);
		padding:20px 30%;
		display: none;
		color:#D5D5D5;
	}
	.photo{
		width: 50%;
	}
	.han2{
		width: 330px !important;
		height: 400px !important;
	}
	.explain{
		width:330px;
		height:170px;
		font-size: 12px;
		padding-bottom: 10px;
		padding-right:20px;
		overflow: scroll;
	}
	.explain h2{
		font-size: 13px;
	}
	.close{
		background-color: #353535;
		width:95%;
		height: 30px;
		text-align: right;
	}
	}
</style>
<section>

	<h3 id="h3">
		CHAHONG ARDOR DAEGU
	</h3>
	<div id="explain">
		한국인 최초 로레알 프로페셔널 파리의 세계적인 아티스트로 선정된 차홍원장이 이끄는 미용실로서 차홍아르더 수성점, 대구점, 수성점은 헤어, 메이크업 ,네일 전문가들이 
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
		<div id="screen">――――――――――――――――――――――――――― <span id="stafftext">Staff</span> ――――――――――――――――――――――――――――</div>
		<div id="mobile">―――――――― <span id="stafftext">Staff</span> ――――――――</div>
	</div>
	<div id="designer">
		<div class="designerArticle">
			<img src="../images/designer/hanps.png">
			<p>한필수 원장</p>
			<p class="profile" id="hanPro">profile</p>
			<div class="han">
				<div class="photo">
					<img src="../images/designer/0098.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>한 필 수</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					 명지대학교 사학과 졸업 | 이화 여대 최고경영자과정 외래교수<br>
					 숙명 여대 최고경영자과정 외래교수 | 백제 예술대 겸임교수<br>
					 <br>
					<h2>ART WORK WITH CELEBRITY</h2>
					 셀럽 – 한석규,장근석,송재림, 배광원<br>
					 <br>
					<h2>SHOW & SEMINAR</h2>
					 Moroocan (London), 2002 & 2003 Salon International,<br>
					 Fellowship Hair Show (London), 2004 Brookland college fashion show (London),<br> 
					  이광희, 오즈세컨, 로레알 컬러트로피 헤어쇼, 2011 Beauty Salon Expo Hair Show‘Editology’<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/gosy.png">
			<p>고선영 실장</p>
			<p class="profile" id="goPro">profile</p>
			<div class="han">
				<div>
					<img src="../images/designer/1194.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>고 선 영</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					Chahong Ardor Academy Director Diploma<br>
					Toni and Guy Advance Cut and ColorLondon Diploma<br>
					<br>
					<h2>ART WORK WITH CELEBRITY</h2>
					CF – 하루야채, 농심 누들면, nh증권, 11번가, 건강 보험 공익광고, 넥슨게임광고<br>
					방송 – 온에어, 스타킹, 풍문으로 들었소, 생방송 투데이, 낭만닥터 김사부, 또오해영, SNL 코리아<br>
					<br>
					<h2>SHOW & SEMINAR</h2>
					2016 Chahong Academy 2016 L’Oréal Professionnel Business Forum hair sho<br>
					2015 Seoul Fashion Week Official Salon, 2014 Seoul Fashion Week Official Salon<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/hanyl.png">
			<p>한상아 실장</p>
			<p class="profile" id="hansaPro">profile</p>
			<div class="han">	
				<div>
					<img src="../images/designer/0539.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>한 상 아</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					Chahong Academy PIS 30month Diploma<br>
					L’Oréal Silver Color Diploma, Chahong Ardor Hair Stylist<br>
					<br>
					<h2>ART WORK WITH CELEBRITY</h2>
					셀럽 – fx루나, fx엠버, 조현영, 박규영, 안신애프로<br>
					방송 – 쇼음악중심, 뮤직뱅크, 인기가요, 제3의 매력<br>
					<br>
					<h2>SHOW & SEMINAR</h2>
					2019ss Solidhomme Seoul Fashion Week<br>
					2018/19fw Chahong Academy Vague Show & Seminar<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/jangsy.png">
			<p>장소연 디자이너</p>
			<p class="profile" id="jangPro">profile</p>
			<div class="han">
				<div>
					<img src="../images/designer/0860.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>장 소 연</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					Chahong Academy hair stylist ACADEMIC BACKGROND<br>
					Chahong Academy hair stylist Verdering<br>
					<br>
					<h2>ART WORK WITH CELEBRITY</h2>
					셀럽 - 김소현, 고소영, 유선, 차정원, 강승현, 로이킴, 김유안<br>
					방송 - 겟잇뷰티, 드라마 ‘크리미널 마인드’, 드라마 ‘수요일오후3시30분’<br>
					<br>
					<h2>MAGAZINE</h2>
					다이슨드라이기 | 유선 bnt 화보 | 불가리 행사 | 여성중앙<br>
					룩북 2017 fw 소울팟스튜디오 | 까르띠에 행사 | 스타일러주부생활<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/anjh.png">
			<p>안장희 디자이너</p>
			<p class="profile" id="anPro">profile</p>
			 <div class="han">
				<div>
					<img src="../images/designer/1678.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>안 장 희</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					Chahong Academy Director Diploma, Chahong Academy Senior Top Stylist Diploma<br>
					Chahong Academy Top Stylist Diploma, Chahong Academy Hair Stylist Vardering<br>
					<br>
					<h2>ART WORK WITH CELEBRITY</h2>
					셀럽 – 고소영, 한지민, 임수정, 박하선, 김아중, 김선아, 서효림, 윤지민, 신지수, 클라라<br>
					방송 – 런닝맨, 광고천재이태백, 옥탑방왕세자, 끝없는사랑<br>
					<br>
					<h2>MAGAZINE</h2>
					엘르, 보그, 바자, 레이디경향, 쎄씨, 얼루어, 헤어그라피, 재능기부빅이슈지면<br>
					무비위크, 씨네21, 오오픽, 주부생활, 인스타일잡지 촬영<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/jungjw.png">
			<p>정재우 디자이너</p>
			<p class="profile" id="jungPro">profile</p>
			<div class="han">
				<div>
					<img src="../images/designer/1171.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>정 재 우</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					Chahong Ardor Academy ART Director Diploma<br> 
					AVEDA Advance Cut and color Diploma<br>
					<br>
					<h2>ART WORK WITH CELEBRITY</h2>
					셀럽 – 김선아, 윤지민,신지수, 임성언, 김승휘, 박란, 추상미, 임수정, 박하선, 김효주<br>
					방송 – 굿모닝 대한민국, KBS연기대상,고교처세왕, 다이아몬드걸2,차홍 SD헤어, 우현증 키스바이우<br>
					<br>
					<h2>SHOW & SEMINAR</h2>
					2012 서울 국제 뷰티살롱 엑스포, 싱가폴 MAMA, 도전슈퍼모델<br>
					2016 2016 S/S New Design ‘REEDS’ Seminar Show<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/juran.png">
			<p>주란 디자이너</p>
			<p class="profile" id="juPro">profile</p>
			 <div class="han">
				<div>
					<img src="../images/designer/juran.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>주 란</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					Chahong Academy Hair Stylist Vardering Diploma<br>
				 	Chahong Academy Hair Stylist<br>
					<br>
					<h2>ART WORK WITH CELEBRITY</h2>
					셀럽 - 서현진, 김아중, 최민수, 이석훈, 엠버, 루나, 유선, 윤지민, 고상지, 양수경<br>
					방송 - 낭만닥터 김사부, 듀엣가요제, 겟잇뷰티<br>
					CF - 농심드레싱누들, 하루야채, NH증권, 건강보험평가원, 굽네치킨, 넥슨<br>
					<br>
					<h2>SHOW & SEMINAR</h2>
					2015 Grand Mint Festival, 2016 Allure Green Campaign<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/kimgb.png">
			<p>김가빈 디자이너</p>
			<p class="profile" id="kimPro">profile</p>
			<div class="han">
				<div>
					<img src="../images/designer/4562.jpg" class="han2">
				</div>
				<div class="explain">
					<h1>김 가 빈</h1><br>
					<h2>PROFESSIONAL EXPERIENCE</h2>
					Chahong Academy PIS 30month Diploma, Chahong Ardor hairstylist<br>
					Chahong Academy Art team<br>
					<br>
					<h2>ART WORK WITH CELEBRITY</h2>
					셀럽 – 바다, 장희령, 유선, 안신애프로, 홍상수프로<br>
					방송 – 히든싱어<br>
					<br>
					<h2>MAGAZINE</h2>
					아디다스 프로골프, 2019 Chahong Ardor design ’60’ lookbook<br>
					Vivatamtam wedding 19s/s lookbook, Chahong Ardor Wedding 19 s/s lookbook<br>
				</div>
				<div class="close">
					[닫기]
				</div>
			</div>
		</div>
	</div>
	
</section>
<%@ include file="../include/footer.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script>
	$(function(){
		
		$(".designerArticle").hover(function(){
			$(this).find(".profile").fadeIn(300);
		},
		function(){
			$(this).find(".profile").fadeOut(300);
		})
		
		$(".designerArticle").click(function(){
			$(this).find(".han").fadeIn(500);
		})
		$(document).on("click",".close",function(){
			$(this).parent().fadeOut(500);
		})
		
	})
</script>


