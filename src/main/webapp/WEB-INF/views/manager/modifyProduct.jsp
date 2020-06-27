<%@ page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance"
	prefix="layout"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<layout:extends name="../layout/template.jsp">
	<layout:put block="title">modifyProduct</layout:put>

	<layout:put block="main" type="REPLACE">
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">상품 수정</h1>
			</div>
		</div>

		<div class="container">
			<form name="newProduct" action="/modifyProductDo" class="form-horizontal"
				method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2">상품 코드</label>
					<div class="col-sm-3">
						<input type="text" name="productId" class="form-control" value="${product.productId }" readonly>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
					<div class="col-sm-3">
						<input type="text" name="productName" class="form-control" value="${product.productName }"
							required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">가격</label>
					<div class="col-sm-3">
						<input type="text" name="unitPrice" class="form-control" value="${product.unitPrice }" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상세 정보</label>
					<div class="col-sm-5">
						<textarea name="description" cols="50" rows="2"
							class="form-control" required>${product.description }</textarea>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">제조사</label>
					<div class="col-sm-3">
						<input type="text" name="manufacturer" class="form-control" value="${product.manufacturer }"
							required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">분류</label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control" value="${product.category }" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">재고 수</label>
					<div class="col-sm-3">
						<input type="text" name="unitStock" class="form-control" value="${product.unitStock }" required>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상태</label>
					<div class="col-sm-5">
						<input type="radio" name="productCondition" value="New"
						 <c:if test="${product.productCondition eq 'New'}">checked</c:if>> 신규 제품 <input
							type="radio" name="productCondition" value="Old"
							<c:if test="${product.productCondition eq 'Old'}">checked</c:if>> 중고 제품 <input
							type="radio" name="productCondition" value="Refurbished"
							<c:if test="${product.productCondition eq 'Refurbished'}">checked</c:if>> 재생 제품
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">이미지</label>
					<div class="col-sm-5">
						<div class="custom-file">
							<input type="file" id="productImg" name="productImg"
								class="custom-file-control" /> <label id="fileLabel"
								class="custom-file-label text-left" for="productImg">${product.productImg}</label>
						</div>

					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="submit" class="btn btn-primary" value="수정">
					</div>
				</div>
			</form>
		</div>
	</layout:put>
</layout:extends>