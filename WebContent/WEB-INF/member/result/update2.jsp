<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>내정보수정(비번)</title>
	<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>
	<div class="box">
	<% 
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		String curpw = request.getParameter("curpw");
		String charpw = request.getParameter("charpw");
		String confpw = request.getParameter("confpw");
		if(curpw.equals("") || charpw.equals("") || confpw.equals("")){
	%>
			<h2>비밀번호 없음 비밀번호변경 실패!!</h2>
			<a href="${context}/member/service/update.jsp">다시 시도하기</a>
	<% 
		} else {
				member.setPw(curpw);
				member.setChangepw(charpw);
				member.setConfirmpw(confpw);
				service.update(member);
				response.sendRedirect("");
		}
	%>
	</div>
</body>
</html>