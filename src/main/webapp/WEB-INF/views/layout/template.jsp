<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://kwonnam.pe.kr/jsp/template-inheritance" prefix="layout"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>
	<layout:block name="title">
		
	</layout:block>
</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
</head>
<body>
<%@include file="../partials/header.jsp"%>
<div>
    <layout:block name="main">
        
    </layout:block>
</div>
<%@include file="../partials/footer.jsp"%>
<script src="/static/res/js/main.js"></script>
</body>
</html>