<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/navi.jsp" />
<link rel="stylesheet" href="${css}/member.css" />
<title>내정보보기</title>
<style>
		#member_detail{border: 1px solid gray;width:90%;height: 400px;margin: 0 auto;border-collapse: collapse;}
		#member_detail tr{border: 1px solid gray;height: 20%}
		#member_detail td{border: 1px solid gray;}
		.font_bold{font-weight:bold;}
		.bg_color{background-color: yellow}
</style>    
<div class="box">
        <input type="hidden" name="action" value="detail" />
		<h2>내정보보기</h2>
		<table id="member_detail">
		<tr>
			<td rowspan="4" style="width:30%">
				<img src="${img}/${member.profileImg}" alt="W3Schools.com" width="160" height="300">
			</td>
			<td class="font_bold bg_color" style="width:20%">ID</td>
			<td style="width:40%">${member.id}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">이 름</td>
			<td>${member.name}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">성 별</td>
			<td>${member.gender}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">이메일</td>
			<td colspan="2">${member.email}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">생년월일</td>
			<td colspan="2">${member.getSsn().substring(0, 6)}</td>
		</tr>
		<tr>
			<td class="font_bold bg_color">등록일</td>
			<td colspan="2">${member.getRegDate()}</td>
		</tr>
	</table></br>
	</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>