<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>    
  
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입로그인</title>
	<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>
	<div class="box">
	<% 
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if(id.equals("") || pw.equals("")){
	%>
			<h2>ID 또는 PW 없음 로그인 실패!!</h2>
			<a href="${context}/member/service/login.jsp">다시 시도하기</a>
	<% 
		} else {
			member.setId(id);
			member.setPw(pw);
			application.log("아이디 : "+id);
			application.log("비번 : "+pw);
			String name = service.login(member);
			application.log("DB 메시지 : "+name);
			if(name.equals("ID가 존재하지 않습니다.")){
	%>  		<h2>ID 존재하지 않아 로그인 실패!!</h2>
				<a href="${context}/member/service/login.jsp">다시 시도하기</a>
	<% 
			} else if(name.equals("비밀번호 가 틀립니다.")) {
	%>			<h2>비밀번호 가 틀려서 로그인 실패!!</h2>
				<a href="${context}/member/service/login.jsp">다시 시도하기</a>
	<% 		} else {
				response.sendRedirect("");
			}
		}
	%>
	</div>
</body>
</html>