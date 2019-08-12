<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <fieldset>
     <textarea id="messageWindow" rows="10" cols="50" readonly="true"></textarea>
     <br/>
     <input id="inputMessage" type="text"/>
     <input type="submit" value="send" onclick="send()" />
 </fieldset>
<script type="text/javascript">
        var textarea = document.getElementById("messageWindow");
        //웹서버가 로컬에 있으며 포트는 8080번을 사용하고 이클립 기준으로 프로젝트 이름이 hairshop이고
        //서버에서 웹 소켓 자바 소스의 @ServerEndpoint어노테이션이 broadcasting을 호출하는것
        var webSocket = new WebSocket('ws://192.168.10.75:8080/hairshop/broadcasting');
       
        var inputMessage = document.getElementById('inputMessage');
    webSocket.onerror = function(event) {
      onError(event)
    };
    webSocket.onopen = function(event) {
      onOpen(event)
    };
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
    function onMessage(event) {
        textarea.value += "상대 : " + event.data + "\n";
    }
    function onOpen(event) {
        textarea.value += "연결 성공\n";
    }
    function onError(event) {
      alert(event.data);
    }
    function send() {
        textarea.value += "나 : " + inputMessage.value + "\n";
        webSocket.send(inputMessage.value);
        inputMessage.value = "";
    }
  </script>
