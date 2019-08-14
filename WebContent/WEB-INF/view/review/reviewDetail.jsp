<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../include/header.jsp" %>
<style>
	*{
		padding:0;
		margin:0;
	}
	section{
		width: 40%;
		margin: 0 auto;
		padding-top: 40px;
	}
	#first{
		width: 100%;
		height: 50px;
		border-top:2px solid #353535;
		border-bottom:1px solid #353535;
		line-height:50px;
		position: relative;
		overflow: hidden;
	}
	#first p{
		position: absolute;
		top:0;
		right: 10px;
	}
	#first2{
		width: 100%;
		padding-top:20px;
		padding-bottom:20px;
		border-bottom:1px solid #353535;
	}
	#aaa{
		position: relative;
		width: 100%;
		height: 50px;
		margin-top:10px;
	} 
	#aaa #list{
		position: absolute;
		top:10px;
		left:0;
		width: 100%;
		height: 30px;
	}
	#aaa #md{
		position: absolute;
		top:0;
		right: 0;
	}
	#aaa a{
		text-decoration: none;
		border:1px solid #ccc;
		width: 60px;
		height: 30px;
		background-color: white;
		border: 1px solid #ccc;
		color:#5D5D5D;
		font-size: 13px;
		padding:10px;
	}
	.comment{ /* 댓글 div */
		margin-top:40px;
		width: 100%;
		height: 40%;
		position: relative;
		margin-bottom: 40px;
		background-color: #F6F6F6;
	}
	.comment table{ /* 댓글쓰는 공간 */
		border:none;
		width: 100%;
		height: 80px;
		
		padding:30px 15px 20px 30px;
	}
	textarea{
		width: 90%;
		height: 60px;
		resize: none;
		border:1px solid #ccc;
	}
	textarea:focus{
		outline: none;
	}
	.comment .btninsert{ /* 댓글등록창에 등록버튼 */
		width:60px;
		height: 62px;
		background-color: white;
		border: 1px solid #ccc;
		color:#5D5D5D;
		font-size: 13px;
		padding:10px;
		position: absolute;
		top:35x;
		right: 20px;
	}
	
	.comment #onlycomment{
		padding:10px;
		font-size: 14px;
	}
	.comment .commentM{
		width:100%;
		height:20px;	
		text-align: right;
	}
	
	.comment .commentFirst{
		width: 100%;
		margin-bottom: 10px;
	}
	/* .comment #commentContent{
		width: 100%;
		height: 40px;
		border-bottom:1px dotted #5D5D5D;
		margin-bottom: 10px;
	
	} */
	.comment #cwriter{
		margin-right: 10px;
		font-weight: bold;
		color:#353535;
	}
	.comment .commentFirst{ 
		color:#747474;
	}
	.comment .commentFirst .ccontent{
		color:black;
		width:80%;
	}
	#ccontent{
		width: 600px;
	}
	.comment .modifyComment{ /* 수정댓글창 */
		display:none;
		width: 716px;
		height: 62px;
		padding-top:10px;
		padding-left:10px;
		position: relative;
		
	} 
	.comment .modifyComment .btnModify{ /*수정버튼 */
		width:60px;
		height: 62px;
		background-color: white;
		border: 1px solid #ccc;
		color:#5D5D5D;
		font-size: 13px;
		position: absolute;
		top:35x;
		right: 5px;
	}
	
	.pointLine{
		width:100%;
		margin-top:10px;
		margin-bottom:10px;
		border:0.5px dotted #5D5D5D;
		
	}
	
	
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		 /* 리뷰게시물 삭제 */
		$("#delete").click(function(){
			var a = confirm("삭제하시겠습니까?");
			if(a==true){
				location.href = "${pageContext.request.contextPath}/review/delete.do?no=${review.rNo}";
			}
				return false;
		})
		
		
		/* 댓글 삭제 */
		$(document).on("click",".btnDelete",function(){ //새로생긴 애들 이벤트 적용되게
			if (!confirm("삭제하시겠습니까?")) {
			        return;
			    }
			
			var cNo = $(this).attr("data-cno"); //리뷰번호
			var $btn = $(this); //삭제버튼
			
			$.ajax({
				url:"${pageContext.request.contextPath}/comment/delete.do",
				type:"get",
				data:{"cNo":cNo}, //핸들러에서 파라미터값이랑 동일.
				dataType:"json",
				success:function(json){
					console.log(json); 
					
					if(json.success == true){
						$btn.closest(".commentFirst").remove();
						
					}
				}
			})
		})
		
		
		/* 댓글 등록 */
		$(".btninsert").click(function(){
			
			if ($.trim($("#cContent").val()) == "") {
		        alert("댓글 내용을 입력해주세요.");
		        $("#cContent").focus();
		        return;
		    }

			if (!confirm("등록하시겠습니까?")) {
		        return;
		    }
			
			var rNo = $(this).attr("data-rno"); //리뷰번호
			var gNo = $(this).attr("data-gno"); //손님번호
			var cWriter = $("#cWriter").val(); //작성자
			var cContent = $("#cContent").val(); //댓글내용
			
			$.ajax({
				url:"${pageContext.request.contextPath}/comment/insert.do",
				type:"get",
				data:{"rNo":rNo, "cContent":cContent, "cWriter":cWriter, "gNo":gNo}, //핸들러에서 파라미터값이랑 동일.
				dataType:"json",
				success:function(json){
					console.log(json); 
					
					var str="<div class='commentFirst'>"; 
					str+="<span id='cwriter'>"+json.cWriter+"</span>";
					str+=new Date(json.cWritetime).format('yyyy.MM.dd a/p hh:mm');
					str+="<div class='modifyComment'><textarea name='ModicContent' class='ModicContent'>${Comment.cContent }</textarea>";
					str+="<button class='btnModify' data-cno='"+json.cNo+"'data-rno='"+json.rNo.rNo+"'>"+"수정";
					str+="</button></div><div class='commentM'>";
					str+="<button class='btnM' data-cno='"+json.cNo+"'>"+"수정";
					str+="</button> ";
					str+="<button class='btnDelete' data-cno='"+json.cNo+"'>"+"삭제";
					str+="</button></div>";
					str+="<div id='ccontent'><span class='ccontent'>"+json.cContent+"</span></div>";
					str+="<hr class='pointLine'></div>"
					
					$("#onlycomment").append(str);
					
				}
			})
			$("#cContent").val("");
		})
		
		
		/* 수정버튼 눌렀을때 수정텍스트 나와 */
		$(document).on("click", ".btnM", function(){ 
			$(this).parent().hide(); //삭제,수정버튼사라졋
			$(this).parent().next("#ccontent").hide(); //내용사라졋
			$(this).parent().prev(".modifyComment").show(); //수정텍스트나왔
			
		})
		
		
		 /* 댓글 수정 */
		$(document).on("click",".btnModify",function(){
			if ($(this).parent().find(".ModicContent").val() == "") {/* 댓글수정할 때 아무것도 안적으면 안되~~~~~ */
		        alert("댓글 내용을 입력해주세요.");
		        $(this).parent().find(".ModicContent").focus();
		        return;
		    }
			
			var cNo = $(this).attr("data-cno"); //댓글번호
			var rNo = $(this).attr("data-rno"); //리뷰번호
			var cContent = $(this).parent().find(".ModicContent").val(); //수정하려는 내용
			
			$.ajax({
				url:"${pageContext.request.contextPath}/comment/modify.do",
				type:"get",
				data:{"cNo":cNo, "cContent":cContent, "rNo":rNo}, //핸들러에서 파라미터값이랑 동일.
				dataType:"json",
				success:function(json){
					console.log(json); 
					$("#onlycomment").empty();
					for(var i=0; i<json.length; i++){
						var str="<div class='commentFirst'>"; 
						str+="<span id='cwriter'>"+json[i].cWriter+"</span>";
						str+=new Date(json[i].cWritetime).format('yyyy.MM.dd a/p hh:mm');
						str+="<div class='modifyComment'><textarea name='ModicContent' class='ModicContent'>"+json[i].cContent+"</textarea>";
						str+="<button class='btnModify' data-cno='"+json[i].cNo+"'data-rno='"+json[i].rNo.rNo+"'>"+"수정";
						str+="</button></div><div class='commentM'>";
						str+="<button class='btnM' data-cno='"+json[i].cNo+"'>"+"수정";
						str+="</button> ";
						str+="<button class='btnDelete' data-cno='"+json[i].cNo+"'>"+"삭제";
						str+="</button></div>";
						str+="<div id='ccontent'><span class='ccontent'>"+json[i].cContent+"</span></div>";
						str+="<hr class='pointLine'></div>";
						
						$("#onlycomment").append(str);
					}
					
					
				}
			})
		}) 

		
		
	})
</script>
<section>
<%-- ${Auth }<br>
${review }<br>
${list }--%>
	<div id="first">
		<h4>${review.rTitle}</h4>
		<p>${review.rWriter} | <fmt:formatDate value="${review.rWritetime}" pattern="yyyy.MM.dd"/></p>
	</div>		
	<div id="first2">
		${review.rContent}
		<img src="/hairshop/upload/${review.rFile }">
	</div>	
			
	<div id="aaa">
		<div id="list">
			<a href="${pageContext.request.contextPath}/review/review.do">목록보기</a>
			<c:if test="${Auth != null}">
				<a href="${pageContext.request.contextPath}/review/insert.do">글쓰기</a>
			</c:if>
	 <c:if test="${Auth.uId == review.rWriter}"> <!-- 비회원일시에 수정삭제 할수 없음 -->
		<div id="md">
			<a href="${pageContext.request.contextPath}/review/modify.do?no=${review.rNo}">수정</a>
			<a href="#" id="delete">삭제</a>
		</div>
	</c:if> 
	</div>	
	</div>
	<div class="comment">
	<div id="onlycomment"><!-- 댓글리스트가 보여야해 -->
		<c:forEach var="Comment" items="${list }">
			<div class="commentFirst">
				<span id="cwriter">${Comment.cWriter}</span>
				<fmt:formatDate value="${Comment.cWritetime }" pattern="yyyy.MM.dd hh:mm"/>
				<div class="modifyComment"><!-- 수정수정수정수정수정수정 -->
					<textarea name="ModicContent" class="ModicContent" placeholder="댓글을 입력하세요">${Comment.cContent }</textarea>
					<button class="btnModify" data-cno="${Comment.cNo}" data-rno="${review.rNo }">수정</button>
				</div>
					<div class="commentM">
						<c:if test="${Auth.uId == Comment.cWriter}">
							<button class="btnM" data-cno="${Comment.cNo}">수정</button>
							<button class="btnDelete" data-cno="${Comment.cNo}" >삭제</button>
						</c:if>
					</div>
				<div id="ccontent">
					<span class="ccontent">${Comment.cContent }</span>
				</div>
				<hr class="pointLine">
			</div>
			
		</c:forEach>
	</div>
			<c:if test="${Auth!=null}"><!-- 댓글삽입하는곳 / 로그인했을때만 -->
					<table>
						<tr>
							<td>
								<!-- 댓글작성자 -->
								<input type="hidden" name="cWriter" disabled="disabled" id="cWriter" value="${Auth.uId }">
								</td>
							</tr>
							<tr>
								<td><!-- 댓글입력하는 택스트공간이야~~~~~~~~~~~~~~~~~~~~~ -->
									<textarea name="cContent" id="cContent" placeholder="댓글을 입력하세요"></textarea>
									<button class="btninsert" data-rno="${review.rNo}" data-gno="${review.rGNo.gNo}">등록</button>
								</td>
						
							</tr>
						</table>
				</c:if>
			<c:if test="${Auth==null}"><!-- 로그인 하지 않았다면 로그인유도 -->
					<table>
						<tr>
							<td>
								댓글을 작성하려면 로그인 해주세요. <a href="${pageContext.request.contextPath}/login/login.do">[로그인]</a>
							</td>
						</tr>
					</table>
			</c:if>	
		</div>		
	
</section>
<%@ include file="../../include/footer.jsp" %>

