<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="sessionId" value="${session.getAttribute('sessionId') }"/>

<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/home">Home</a>			
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a
							href="<c:url value='/member/loginMember.jsp'/>" class="nav-link">로그인</a>
						</li>
						<li class="nav-item"><a
							href="<c:url value='/member/addMember.jsp'/>" class="nav-link">회원가입</a>
						</li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">["${sessionId}"]</li>
						<li class="nav-item"><a
							href="<c:url value='/member/logoutMember.jsp'/>" class="nav-link">로그아웃</a>
						</li>
						<li class="nav-item"><a
							href="<c:url value='/member/updateMember.jsp'/>" class="nav-link">회원수정</a>
						</li>
					</c:otherwise>
				</c:choose>

				<li class="nav-item"><a href="<c:url value='/productList'/>"
					class="nav-link">상품목록</a></li>
				<li class="nav-item"><a href="<c:url value='/addProduct'/>"
					class="nav-link">상품등록</a></li>

				<li class="nav-item"><a
					href="<c:url value='/editProduct'/>"
					class="nav-link">상품수정</a></li>
				<li class="nav-item"><a
					href="<c:url value='/deleteProduct'/>"
					class="nav-link">상품삭제</a></li>
			</ul>
		</div>
	</div>
</nav>

