<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/navi.jsp" />
<title>회원 상세정보</title>
<style>
	#member_detail{border: 1px solid gray;width:90%;height: 350px;margin: 0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid gray;height: 20%}
	#member_detail td{border: 1px solid gray;}
	.font_bold{font-weight:bold;}
	.bg_color{background-color: yellow}
</style>
	<div class="box">
	<h2>회원 상세정보</h2>
	<table id="member_detail">
		<tr>
			<td rowspan="4" style="width:30%">
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
		
	</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>