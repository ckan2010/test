<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원정보 수정</title>
	<link rel="stylesheet" href="${css}/member.css" />
	<style>
		#member_detail{border: 1px solid gray;width:90%;height: 400px;margin: 0 auto;border-collapse: collapse;}
		#member_detail tr{border: 1px solid gray;height: 20%}
		#member_detail td{border: 1px solid gray;}
		.font_bold{font-weight:bold;}
		.bg_color{background-color: yellow}
</style>
</head>
<body>
<div class="box">
<% 
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean member = service.findById(request.getParameter("id"));
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	member.setChangepw(pw);
	member.setEmail(email);
	service.update(member);
	response.sendRedirect("");		
%> 
		<a href="${context}/member/member_controller.jsp">
			<img src="${img}/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="${context}/index.jsp">
			<img src="${img}/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>