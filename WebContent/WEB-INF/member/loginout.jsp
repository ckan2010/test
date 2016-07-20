<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그아웃</title>
</head>
<body>
	<div class="box">
<% 		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
%>	
<%--	service.show(); --%>
		<form action="${context}/member/result/logout.jsp" method="post">
			<input type="hidden" name="id" value="<%=member.getId() %>" />
			<input type="hidden" name="pw" value="<%=member.getPw() %>" />
			<input type="submit" value="로그아웃" />
		</form>
	</div>
</body>
</html>