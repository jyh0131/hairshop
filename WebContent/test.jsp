<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script> 
Lpad=function(str, len) 
 { 
    str = str + ""; 
      while(str.length < len) 
    { 
      str = "0"+str; 
    } 
     return str; 
 } 

/// 사용자로부터 마우스 또는 키보드 이벤트가 없을경우의 자동로그아웃까지의 대기시간, 분단위 
 var iMinute = 1; 
  
 //자동로그아웃 처리 몇초전에 경고를 보여줄지 설정하는 부분, 초단위 
 var noticeSecond = 55; 

 var iSecond = iMinute * 60 ; 
 var timerchecker = null; 
  
 initTimer=function() 
 { 
    /// //사용자부터 마우스 또는 키보드 이벤트가 발생했을경우 자동로그아웃까지의 대기시간을 다시 초기화 
    if(window.event) 
    { 
    iSecond = iMinute * 60 ;; 
     clearTimeout(timerchecker); 
      coverFilmMain.style.visibility='hidden'; // 입력방지 레이어 해제 
    timer.style.visibility='hidden';  // 자동로그아웃 경고레이어 해제 
    } 
    rMinute = parseInt(iSecond / 60); 
    rSecond = iSecond % 60; 
    if(iSecond > 0) 
    { 
    //지정한 시간동안 마우스, 키보드 이벤트가 발생되지 않았을 경우 
        if(iSecond < noticeSecond) 
          { 
            coverFilmMain.style.visibility='visible'; /// 입력방지 레이어 활성 
            timer.style.visibility='visible';  /// 자동로그아웃 경고레이어 활성 
                        } 
            ///자동로그아웃 경고레이어에 경고문+남은 시간 보여주는 부분 
      timer.innerHTML = "<font family=tahoma style='font-size:70;'>AUTO LOG OUT</font></h1> <font color=red>" + Lpad(rMinute, 2)+":"+Lpad(rSecond, 2); 
      iSecond--; 
      timerchecker = setTimeout("initTimer()", 1000); // 1초 간격으로 체크 
    } 
    else 
    { 
        clearTimeout(timerchecker); 
        alert("장시간 미사용으로 자동 로그아웃 처리되었습니다."); 
        //location.href = "./logOut.php"; // 로그아웃 처리 페이지 
    } 
 } 
onload = initTimer;///현재 페이지 대기시간 
document.onclick = initTimer; /// 현재 페이지의 사용자 마우스 클릭이벤트 캡춰 
document.onkeypress = initTimer;/// 현재 페이지의 키보트 입력이벤트 캡춰 
</script>
</head>
<body topmargin=0 leftmargin=0>
	<!-- 비활성화 시키는 레이어-->
	<div id='coverFilmMain'	style='z-index: 99997; position: absolute; visibility: hidden; width: 100%; height: 100%; background-color: #000000; filter: Alpha(opacity = 20); opacity: 0.6; -moz-opacity: 0.6; text-align: center; font-size: 12pt; color: black;'></div>

	<!-- 자동로그아웃시까지 남은 시간을 보여주는 레이어-->
	<div id="timer"	style="position: absolute; width: 100%; height: 40%; margin-top: 20%; visibility: hidden; border: 0; color: black; font-family: tahoma; font-size: 150; font-weight: bold; text-align: center"></div>

	입력
	<input type=text size=10>
	<br> 입력
	<input type=radio checked>
	<input type=radio>
	<br> 입력
	<input type=checkbox> 입력
	<select><option>123</option>
		<option>1234</option></select> 입력
	<textarea></textarea>
	<pre> 
사용자로부터 지정한 대기시간동안 아무런 마우스, 키보드 이벤트가 발생하지 않을 경우 

지정한 시간부터 자동로그 아웃 경고를 보여주며, 

대기시간이 지나면 자동으로 로그아웃 처리합니다. 

하지만 사용자로부터 마우스, 키보드 이벤트가 발생할 경우 대기시간을 다시 초기화 시킵니다. 

* 익스7 기준으로 테스트 되었습니다. 
* 비활성화시켜도 작동됩니다. 

감사합니다. 꾸벅 

</body>
</html>