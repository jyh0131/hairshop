<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Cutive+Mono&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Libre+Caslon+Display&display=swap" rel="stylesheet">
<style>
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
	
	.profile {
		text-decoration:none;
		font-weight: bold;
		color:#ccc;
		font-family: 'Cutive Mono', monospace;
	}
	.profile:hover {
		text-decoration:none;
		font-weight: bold;
		color:black;
		font-family: 'Cutive Mono', monospace;
		cursor: pointer;
	}
	/*  */	
	#han{
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
	.han2{
		width: 425px;
		height: 566px;
	}
	.explain{
		font-size: 14px;
		padding-bottom: 10px;
	}
	#close, #goclose, #hansaclose, #jangclose, #anclose, #jungclose, #juranclose, #kimclose{
		cursor: pointer;
		background-color: #353535;
		width: 425px;
		height: 30px;
		text-align: right;
		padding-right: 10px;
	}
	#pp{
		font-weight: bold;
	}
	#go{
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
	#hansa{
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
	#jang{
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
	#an{
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
	#jung{
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
	#juran{
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
	#kim{
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
		――――――――――――――――――――――――――― <span id="stafftext">Staff</span> ――――――――――――――――――――――――――――
	</div>
	<div id="designer">
		<div class="designerArticle">
			<img src="../images/designer/hanps.png">
			<p>한필수 원장</p>
			<p class="profile" id="hanPro">profile</p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/gosy.png">
			<p>고선영 실장</p>
			<p class="profile" id="goPro">profile</p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/hanyl.png">
			<p>한상아 실장</p>
			<p class="profile" id="hansaPro">profile</p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/jangsy.png">
			<p>장소연 디자이너</p>
			<p class="profile" id="jangPro">profile</p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/anjh.png">
			<p>안장희 디자이너</p>
			<p class="profile" id="anPro">profile</p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/jungjw.png">
			<p>정재우 디자이너</p>
			<p class="profile" id="jungPro">profile</p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/juran.png">
			<p>주란 디자이너</p>
			<p class="profile" id="juPro">profile</p>
		</div>
		<div class="designerArticle">
			<img src="../images/designer/kimgb.png">
			<p>김가빈 디자이너</p>
			<p class="profile" id="kimPro">profile</p>
		</div>
	</div>
	<!-- 디자이너 상세 프로필. 처음에는 display none처리 되어 있음. -->
	<div id="han">
		<div>
			<img src="../images/designer/0098.jpg" class="han2">
		</div>
		<div class="explain">
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
		<div id="close">
			[닫기]
		</div>
	</div>
	
	<div id="go">
		<div>
			<img src="../images/designer/1194.jpg" class="han2">
		</div>
		<div class="explain">
			<h2>PROFESSIONAL EXPERIENCE</h2>
			Chahong Ardor Academy Director Diploma<br>
			Chahong Ardor Academy Senior Top Stylist Diploma<br>
			Toni and Guy Advance Cut and ColorLondon Diploma<br>
			<br>
			<h2>ART WORK WITH CELEBRITY</h2>
			셀럽 – 서현진, 홍수아, 김하늘, 김사랑, 다니엘헤니, 정시아, 이정현, 채연, 길건, 옥주현, 이영아<br>
			CF – 하루야채, 농심 누들면, nh증권, 11번가, 건강 보험 공익광고, 넥슨게임광고<br>
			방송 – 온에어, 스타킹, 풍문으로 들었소, 생방송 투데이, 낭만닥터 김사부, 또오해영, SNL 코리아<br>
			<br>
			<h2>SHOW & SEMINAR</h2>
			2016 Chahong Academy 2016 L’Oréal Professionnel Business Forum hair sho<br>
			2015 Seoul Fashion Week Official Salon, 2014 Seoul Fashion Week Official Salon<br>
		</div>
		<div id="goclose">
			[닫기]
		</div>
	</div>
	
	<div id="hansa">
		<div>
			<img src="../images/designer/0539.jpg" class="han2">
		</div>
		<div class="explain">
			<h2>PROFESSIONAL EXPERIENCE</h2>
			Chahong Academy PIS 30month Diploma<br>
			L’Oréal Silver Color Diploma, Chahong Ardor Hair Stylist<br>
			<br>
			<h2>ART WORK WITH CELEBRITY</h2>
			셀럽 – fx루나, fx엠버, 조현영, 박규영, 안신애프로<br>
			방송 – 쇼음악중심, 뮤직뱅크, 인기가요, 제3의 매력<br>
			콘서트 – SM TOWN 칠레 콘서트<br>
			<br>
			<h2>SHOW & SEMINAR</h2>
			2019ss Solidhomme Seoul Fashion Week<br>
			2019ss Andy & Debb Fashion Show, 2018/19fw Chahong Academy Vague Show & Seminar<br>
		</div>
		<div id="hansaclose">
			[닫기]
		</div>
	</div>
	<!-- 장소연--> <!-- 여기서부터해야됭 -->
	<div id="jang">
		<div>
			<img src="../images/designer/0860.jpg" class="han2">
		</div>
		<div class="explain">
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
			차정원 fresh 광고 | 차정원 네오팜 광고<br>
		</div>
		<div id="jangclose">
			[닫기]
		</div>
	</div>
	
	 <!--안장희, -->
	 <div id="an">
		<div>
			<img src="../images/designer/1678.jpg" class="han2">
		</div>
		<div class="explain">
			<h2>PROFESSIONAL EXPERIENCE</h2>
			Chahong Academy Director Diploma, Chahong Academy Senior Top Stylist Diploma<br>
			Chahong Academy Top Stylist Diploma, Chahong Academy Hair Stylist Vardering<br>
			<br>
			<h2>ART WORK WITH CELEBRITY</h2>
			셀럽 – 고소영, 한지민, 임수정, 박하선, 김아중, 김선아, 서효림, 윤지민, 신지수, 클라라<br>
			CF – 소망화장품 다나한, 로베르타, 김재경 배럴 광고, 얼진광고<br>
			방송 – 런닝맨, 광고천재이태백, 옥탑방왕세자, 끝없는사랑<br>
			영화 – 음치클리닉, 돈 크라이 마미, 부산국제영화제<br>
			<br>
			<h2>MAGAZINE</h2>
			엘르, 보그, 바자, 레이디경향, 쎄씨, 얼루어, 헤어그라피, 재능기부빅이슈지면<br>
			무비위크, 씨네21, 오오픽, 주부생활, 인스타일잡지 촬영<br>
		</div>
		<div id="anclose">
			[닫기]
		</div>
	</div>
	<!--정재우,  --> 
	 <div id="jung">
		<div>
			<img src="../images/designer/1171.jpg" class="han2">
		</div>
		<div class="explain">
			<h2>PROFESSIONAL EXPERIENCE</h2>
			Chahong Ardor Academy ART Director Diploma<br> 
			Toni and Guy Advance Cut and ColorLondon Diploma<br> 
			AVEDA Advance Cut and color Diploma<br>
			<br>
			<h2>ART WORK WITH CELEBRITY</h2>
			셀럽 – 김선아, 윤지민,신지수, 임성언, 김승휘, 박란, 추상미, 임수정, 박하선, 김효주<br>
			CF – 더마화이트 지면, 코오롱스포츠, 드라이기기 필립스 촬영, 삼성전자 스마트폰<br>
			방송 – 굿모닝 대한민국, KBS연기대상,고교처세왕, 다이아몬드걸2,차홍 SD헤어, 우현증 키스바이우<br>
			<br>
			<h2>SHOW & SEMINAR</h2>
			2012 서울 국제 뷰티살롱 엑스포, 싱가폴 MAMA, 도전슈퍼모델<br>
			2015 2015-2016 F/W New Design ‘Drowsy‘ Seminar Show<br>
			2016 2016 S/S New Design ‘REEDS’ Seminar Show<br>
		</div>
		<div id="jungclose">
			[닫기]
		</div>
	</div>
	 <!-- 주란,  -->
	 <div id="juran">
		<div>
			<img src="../images/designer/juran.jpg" class="han2">
		</div>
		<div class="explain">
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
		<div id="juranclose">
			[닫기]
		</div>
	</div>
	 
	 
	 
	 
	 <!-- 김가빈  -->
	<div id="kim">
		<div>
			<img src="../images/designer/4562.jpg" class="han2">
		</div>
		<div class="explain">
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
			Vivatamtam wedding 19s/s lookbook<br>
			Chahong Ardor Wedding 19 s/s lookbook<br>
		</div>
		<div id="kimclose">
			[닫기]
		</div>
	</div>
	 

</section>
<%@ include file="../include/footer.jsp" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js">
</script>
<script>
	$(function(){
		$("#hanPro").click(function(){
			$("#han").fadeIn(500);	
		})
		$("#close").click(function(){
			$("#han").fadeOut(500);
		})
		
		$("#goPro").click(function(){
			$("#go").fadeIn(500);
		})
		$("#goclose").click(function(){
			$("#go").fadeOut(500);	
		})
		
		$("#hansaPro").click(function(){
			$("#hansa").fadeIn(500);
		})
		$("#hansaclose").click(function(){
			$("#hansa").fadeOut(500);	
		})
		
		$("#jangPro").click(function(){
			$("#jang").fadeIn(500);
		})
		$("#jangclose").click(function(){
			$("#jang").fadeOut(500);	
		})

		$("#anPro").click(function(){
			$("#an").fadeIn(500);
		})
		$("#anclose").click(function(){
			$("#an").fadeOut(500);	
		})
		
		$("#jungPro").click(function(){
			$("#jung").fadeIn(500);
		})
		$("#jungclose").click(function(){
			$("#jung").fadeOut(500);	
		})
		
		$("#juPro").click(function(){
			$("#juran").fadeIn(500);
		})
		$("#juranclose").click(function(){
			$("#juran").fadeOut(500);	
		})
		
		$("#kimPro").click(function(){
			$("#kim").fadeIn(500);
		})
		$("#kimclose").click(function(){
			$("#kim").fadeOut(500);	
		})
	})
</script>


