<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ytmultiple.css"
	type="text/css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha384-vk5WoKIaW/vJyUAd9n/wmopsmNhiy+L2Z+SBxGYnUkunIxVxAv/UtMOhba/xskxh"
        crossorigin="anonymous">
</script> -->

<script src="https://www.youtube.com/player_api"></script>
<style>
#div1 {
	background-color: white;
}
</style>
<body>
	<div id=div1><%@ include file="../include/header.jsp"%></div>
	<div class="jquery-script-center">
	<div class="jquery-script-ads">
	<script type="text/javascript">
		<!--
			google_ad_client = "ca-pub-2783044520727903";
			/* jQuery_demo */
			google_ad_slot = "2780937993";
			google_ad_width = 728;
			google_ad_height = 90;
		//-->
			</script>
			<script type="text/javascript"
				src="https://pagead2.googlesyndication.com/pagead/show_ads.js">
				
			</script>
		</div>
		<div class="jquery-script-clear"></div>
	</div>
	</div>

	<div class="mov_box">
		<!-- YouTube position -->
		<div class="yt_wrap">
			<div id="player1" class="yt_box"></div>
		</div>
	</div>
	<div class="mov_box">
		<!-- YouTube position -->
		<div class="yt_wrap">
			<div id="player2" class="yt_box"></div>
		</div>
	</div>
	<div class="mov_box">
		<!-- YouTube position -->
		<div class="yt_wrap">
			<div id="player3" class="yt_box"></div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/ytmultiple.js"></script>
	
	<script>
		// YouTube ID
		var ytPlayList = [ {
			id : "player1",
			VideoId : "OYttd9GgVoM"
		}, {
			id : "player2",
			VideoId : "VGjwsO8Xifo"
		}, {
			id : "player3",
			VideoId : "-VdLUV3XmkI"
		} ];

		// click event(optional)
		$(document).ready(function() {
			$('.mov_box').click(function() {
				ytTogglePlay();
			});
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


