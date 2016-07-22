<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/navi.jsp" />
<link rel="stylesheet" href="${css}/member.css" />
<style>
	#member_detail{border: 1px solid gray;width:70%;height: 350px;margin: 0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid gray;height: 10%}
	#member_detail td{border: 1px solid gray;}
	.font_bold{font-weight:bold;}
	.bg_color{background-color: yellow}
</style>
</head>
<body>
<div class="box">
		<h2>회원정보수정</h2>
		<form action="${context}/member.do" method="post">
		<table id="member_detail">
		<tr>
			<td rowspan="5" style="width:30%">
				<img src="${img}/${member.profileImg}" alt="W3Schools.com" width="150" height="350">
			</td>
			<td class="font_bold bg_color" style="width:20%">ID</td>
			<td style="width:40%">${member.id}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">이 름</td>
			<td>${member.name}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">비밀번호</td>
			<td colspan="2">
			<input type="text" name="pw" value="${member.pw}" >
		</tr>
		<tr>
			<td class="font_bold bg_color">성 별</td>
			<td>${member.gender}</td>
		</tr>
			<td class="font_bold bg_color">이메일</td>
			<td colspan="2">
			<input type="text" name="email" value="${member.email}" >
		</tr>
		<tr>
			<td class="font_bold bg_color">생년월일</td>
			<td colspan="2">${member.ssn.substring(0,6)}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">등록일</td>
			<td colspan="2">${member.regDate}</td>
		</tr>
	</table></br>
	<input type="hidden" name="action" value="update2"/>
	<input type="submit" value="수 정"/>
	<input type="reset" value="취 소"/>
	</form>
		
	</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>