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
		min-width:500px;
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
		overflow: hidden;
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
			<a href="${pageContext.request.contextPath}/board/managerList.do">목록으로</a>
		</div>
	 <c:if test="${Auth.uIsMgr == true}"> <!-- 매니저만 수정 -->
		<div id="md">
			<a href="${pageContext.request.contextPath}/board/managerModify.do?no=${review.rNo}">수정</a>
			<a href="${pageContext.request.contextPath}/board/managerDetail.do" id="delete">삭제</a>
		</div>
	</c:if> 
	</div>				

</section>

<%@ include file="../../include/footer.jsp" %>