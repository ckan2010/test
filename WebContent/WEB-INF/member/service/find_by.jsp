<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색(이름)</title>
<link rel="stylesheet" href="${css}/member.css" />
<style>
	iframe.ifrm{border:none;width:400px;height:400px}
</style>
</head>
<body>
	<div class="box">
	<h1>검색(이름)</h1>
		<iframe src="image.jsp" class="ifrm"></iframe><br>
		<a href="${context}/member/member_controller.jsp">
			<img src="${img}/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="${context}/index.jsp">
			<img src="${img}/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>