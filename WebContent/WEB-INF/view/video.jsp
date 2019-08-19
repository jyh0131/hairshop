<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include/header.jsp" %>
<style>
	*{
		padding:0;
		margin:0;
	}
	@media screen and (min-width:1200px){
	section{
		width: 50%;
		margin: 0 auto;
		padding-top: 40px;
	}
	#big{
		width: 100%;
		margin-left: 20px;
	}
	.video{
		float:left;
		width: 460px;
		height: 278px;
		margin-right:10px;
		margin-bottom: 50px;
	}
	}
	@media all and (max-width:1199px){
	section{
		width: 90%;
		margin: 0 auto;
		padding-top: 40px;
	}
	.video{
		float:left;
		width:330px;
		height:250px;
		margin-bottom: 10px;
	}
	}
</style>
<section>

	<div id="big">
		<div class="video">
			<iframe src="https://player.vimeo.com/video/311830169?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
		<div class="video">
			<iframe src="https://player.vimeo.com/video/311829015?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
		<div class="video">
			<iframe src="https://player.vimeo.com/video/311823565?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
		<div class="video">
			<iframe src="https://player.vimeo.com/video/311823335?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
		<div class="video">
			<iframe src="https://player.vimeo.com/video/286121793?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
		<div class="video">
			<iframe src="https://player.vimeo.com/video/286120398?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
		<div class="video">
			<iframe src="https://player.vimeo.com/video/252454869?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
		<div class="video">
			<iframe src="https://player.vimeo.com/video/263294020?app_id=122963" width="330" height="278" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
		</div>
	</div>

</section>
<%@ include file="../include/footer.jsp" %>