<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>탈 퇴</title>
	<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>
<div class="box">
<% 
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean member = new MemberBean();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String confpw = request.getParameter("confpw");
	if(pw.equals(confpw)){
		member.setId(id);
		member.setPw(confpw);	
		String msg = service.delete(id);
		response.sendRedirect("");
	} else {
%>		<h2>비밀번호 가 틀려서 탈퇴실패</h2>
		<a href="${context}/member/service/delete.jsp">탈 퇴</a>	
<%	}
%> 	</br></br>
		<a href="${context}/member/member_controller.jsp">
			<img src="${img}/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="${context}/index.jsp">
			<img src="${img}/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>