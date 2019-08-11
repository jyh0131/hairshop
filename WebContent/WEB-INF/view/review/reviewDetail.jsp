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
		margin-bottom:20px;
		border-bottom:1px solid #353535;
	}
	#aaa{
		position: relative;
		width: 100%;
		height: 50px;
		margin-top:20px;
	} 
	#aaa #list{
		position: absolute;
		top:10px;
		left:0;
	}
	#aaa #md{
		position: absolute;
		top:10px;
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
	.comment{
		margin-top:20px;
		width: 100%;
		height: 40%;
		position: relative;
	}
	.comment table{
		border-top:1px solid #ccc;
		border-bottom:1px solid #ccc;
		width: 100%;
		height: 60px;
	}
	.comment table input{
		background-color: white;
		border:none;
		font-size: 16px;
	}
	textarea{
		width: 80%;
		height: 60px;
		resize: none;
	}
	textarea:focus{
		outline: none;
	}
	.comment button{
		background-color: white;
		border: 1px solid #ccc;
		color:#5D5D5D;
		font-size: 13px;
		padding:10px;
		position: absolute;
		top:50px;
		right: 20px;
	}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
	$(function(){
		$("#delete").click(function(){
			var a = confirm("삭제하시겠습니까?");
			if(a==true){
				location.href = "${pageContext.request.contextPath}/review/delete.do?no=${review.rNo}";
			}
				return false;
		})
	})
</script>
<section>
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
			
	 <c:if test="${Auth.uId == review.rWriter}"> <!-- 비회원일시에 수정삭제 할수 없음 -->
		<div id="md">
			<a href="${pageContext.request.contextPath}/review/modify.do?no=${review.rNo}">수정</a>
			<a href="#" id="delete">삭제</a>
		</div>
	</c:if> 
	</div>	
	</div>
	<div class="comment">
				<c:if test="${Auth!=null}"><!-- 댓글삽입하는곳 / 로그인했을때만 -->
					<table>
						<tr>
							<td>
								<input type="text" name="cWriter" disabled="disabled" id="cWriter" value="${Auth.uId }">
							</td>
						</tr>
						<tr>
							<td>
								<textarea name="cContent"></textarea>
								<button>등록</button>
							</td>
						</tr>
					</table>
					</c:if>
				</div>
		<div class="comment">
			<c:if test="${Auth==null}"><!-- 로그인 하지 않았다면 로그인유도 -->
					<table border="1">
						<tr>
							<td>
								댓글을 작성하려면 로그인 해주세요. <a href="#">[로그인]</a>
							</td>
						</tr>
					</table>
			</c:if>	
		</div>		
	<!-- 댓글 -->
	<%-- <c:if test="${Auth != null }">
		<form id="">
			<input type="hidden" name="cNo" value="">
		</form>
		<c:forEach var="comment" items="${list }">
			<tr>
				<td>
						${comment.cWriter }<br>
						${comment.cContent }<br>
				</td>
				<td>
					${comment.cWritetime }
				</td>
				<c:if test="#{comment.cWriter == Auth.uId }">
					<td>
						<a href="#">수정</a>
						<a href="#">삭제</a>
					</td>
				</c:if>
			</tr>
				
			
		</c:forEach>
	</c:if>
	 --%>
	
	
	
	
	
	
	
	
</section>

<%@ include file="../../include/footer.jsp" %>