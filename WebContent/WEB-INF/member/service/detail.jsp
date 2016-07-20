<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세정보</title>
<link rel="stylesheet" href="${css}/member.css">
<style>
	#member_detail{border: 1px solid gray;width:90%;height: 400px;margin: 0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid gray;height: 20%}
	#member_detail td{border: 1px solid gray;}
	.font_bold{font-weight:bold;}
	.bg_color{background-color: yellow}
</style>
</head>
<body>
<!-- name,id,birth,regDate,gender,profileImg -->
	<div class="box">
	<h1>회원 상세정보</h1>
	<table id="member_detail">
		<tr>
			<td rowspan="3" style="width:30%">
				<img src="${img}/lee.jpg" alt="W3Schools.com" width="104" height="142">
			</td>
			<td class="font_bold bg_color" style="width:20%">ID</td>
			<td style="width:40%"></td>
		</tr>
		<tr>
			<td class="font_bold bg_color">이 름</td>
			<td></td>
		</tr>
		<tr>
			<td class="font_bold bg_color">성 별</td>
			<td></td>
		</tr>
		<tr>
			<td class="font_bold bg_color">이메일</td>
			<td></td>
		</tr>
		<tr>
			<td class="font_bold bg_color">생년월일</td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="font_bold bg_color">등록일</td>
			<td colspan="2"></td>
		</tr>
	</table>
		<a href="${context}/member/member_controller.jsp">
			<img src="${img}/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="${context}/index.jsp">
			<img src="${img}/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>