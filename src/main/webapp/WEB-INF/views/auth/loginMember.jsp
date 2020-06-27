<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<layout:extends name="../layout/template.jsp">
<layout:put block="title">login</layout:put>

<layout:put block="main" type="REPLACE">
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<c:if test="${error eq 0 }">
				<div class="alert alert-danger">
					dpweeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
				</div>
				</c:if>
						
			<form class="form-signin" action="/member/login" method="post">
				<div class="form-group">
					<label for="name" class="sr-only">User Name</label> 
					<input type="text" class="form-control" placeholder="ID" name="name" required autofocus>
				</div>
				<div class="form-group">
					<label for="password" class="sr-only">Password</label> 
					<input type="password" class="form-control" placeholder="Password" name="password" required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</layout:put> 
</layout:extends>