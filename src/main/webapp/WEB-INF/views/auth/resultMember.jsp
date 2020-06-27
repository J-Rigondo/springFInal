<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session = "true" %>

<layout:extends name="../layout/template.jsp">
<layout:put block="title">home</layout:put>

<layout:put block="main" type="REPLACE">
   <div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원정보</h1>
		</div>
	</div>
	<div class="container" align="center">
		<c:choose>
			<c:when test="${msg eq 1 }">
				<h2 class="alert alert-danger">${sessionScope.sessionId }님 환영합니다.</h2>			
			</c:when>
			<c:when test="${msg eq 2 }">
				<h2 class="alert alert-danger">중복된 아이디입니다. 아이디를 다시 확인해주세요.</h2>			
			</c:when>
			<c:when test="${msg eq 3 }">
				<h2 class="alert alert-danger">비밀번호를 다시 확인해주세요.</h2>			
			</c:when>
			<c:when test="${msg eq 4 }">
				<h2 class="alert alert-danger">회원가입을 축하드립니다.</h2>			
			</c:when>
		</c:choose>
	</div>	
</layout:put> 
</layout:extends>