<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<layout:extends name="layout/template.jsp">
<layout:put block="title">home</layout:put>

<layout:put block="main" type="REPLACE">
   <div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				웹 쇼핑몰에 오신 것을 환영합니다
			</h1>
		</div>
	</div>

	<main role="main">
		<div class="container">
			<div class="text-center">
				<h2>
					Welcome to Web Market !
				</h2>
				<h4 id="time-zone"></h4>			
			</div>			
		</div>
	</main>
</layout:put> 
</layout:extends>