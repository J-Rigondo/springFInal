<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page session="true"%>

<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/home">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionScope.sessionId}">
						<li class="nav-item"><a href="/member/login" class="nav-link">로그인</a>
						</li>
						<li class="nav-item"><a
							href="/member/register" class="nav-link">회원가입</a>
						</li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">${sessionScope.sessionId}님</li>
						<li class="nav-item"><a
							href="/member/logout" class="nav-link">로그아웃</a>
						</li>						
					</c:otherwise>
				</c:choose>

				<li class="nav-item"><a href="<c:url value='/productList'/>"
					class="nav-link">상품목록</a></li>

				<c:choose>
					<c:when test="${not empty sessionScope.sessionId}">
						<li class="nav-item"><a href="/addProduct"
							class="nav-link">상품등록</a></li>

						<li class="nav-item"><a href="/manageProduct"
							class="nav-link">상품관리</a></li>
						
					</c:when>

				</c:choose>


			</ul>
		</div>
	</div>
</nav>

