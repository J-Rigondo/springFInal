<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<layout:extends name="layout/template.jsp">
<layout:put block="title">productDetail</layout:put>

<layout:put block="main" type="REPLACE">
   <div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="/static/res/img/${product.productImg }" alt="product-image" style="width:100%" />
			</div>
			<div class="col-md-6">				
				<h3>${product.productName }</h3>
				<p>${product.description }
				<p><b>상품 코드 : </b><span class="badge badge-danger"> ${product.productId }</span>
				<p><b>제조사</b> : ${product.manufacturer }
				<p><b>분류</b> : ${product.category }
				<p><b>재고 수</b> : ${product.unitStock }
				<h4>${product.unitPrice }원</h4>
				<p><a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> <a href="/productList" class="btn btn-secondary"> 상품 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
</layout:put> 
</layout:extends>
