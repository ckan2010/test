<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %> 
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>탈퇴</title>
	<link rel="stylesheet" href="${css}/member.css" /><div class="box">
	<style type="text/css">
		span.meta{width: 200px;background-color: yellow;float:left;text-align: left;}
	</style>
</head>
<body>
<% 		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
%>
<%--service.show(); --%>
	<h1>탈퇴</h1>
		<form action="${context}/member/result/delete.jsp" method="post">
		    <input type="hidden" name="id" value="<%=member.getId() %>" />
			<input type="hidden" name="pw" value="<%=member.getPw() %>" />
			<span class="meta">확인 비밀번호</span> <input type="password" name="confpw" />
			</br></br>			
			<input type="submit" value="탈 퇴"/>
	   		<input type="reset" value="취 소"/>
	   </form>
		<a href="${context}/member/member_controller.jsp">
			<img src="${img}/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="${context}/index.jsp">
			<img src="${img}/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>