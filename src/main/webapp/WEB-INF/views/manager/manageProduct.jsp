<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<layout:extends name="../layout/template.jsp">
<layout:put block="title">home</layout:put>

<layout:put block="main" type="REPLACE">
  
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">상품 목록</h1>
			</div>
		</div>

		<div class="container">
			<div class="row" align="center">
				<c:choose>
					<c:when test="${!empty productList}">
						<c:forEach items="${productList}" var="product">
							<div class="col-md-4">
								<img src="/static/res/img/${product.productImg }" 
									alt="product-image" style="width: 100%" />
								<h3>${product.productName}</h3>
								<p>${product.description }</p>
								<p>${product.unitPrice }원</p>								
								<a href="/modifyProduct?productId=${product.productId }" class="btn btn-secondary">상품수정</a>
								<a href="/deleteProductDo?productId=${product.productId }" class="btn btn-secondary">상품삭제</a>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<h1>상품이 없습니다.</h1>
					</c:otherwise>
				</c:choose>



			</div>
		</div>
</layout:put> 
</layout:extends>