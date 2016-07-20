<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그아웃</title>
	<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>
<div class="box">
<% 
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean member = new MemberBean();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");	
	member.setId(id);
	member.setPw(pw);
	service.logout(member);
	response.sendRedirect("");	
%> 	
	</div>
</body>
</html>