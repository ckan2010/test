<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>       
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입</title>
<link rel="stylesheet" href="${css}/member.css" />
<style type="text/css">
	span.meta{width: 200px;background-color: yellow;float:left;text-align: left;}
	div.joinDiv{border: 1px dotted gray;width: 80%;margin: 10px 50px 10px 50px}
</style>	
</head>
<body>
    <div class="box">
    <% 
    
    MemberService service = MemberServiceImpl.getInstance();
	MemberBean member = new MemberBean();
	String name="",id="",pw="",ssnId="",email="";
    name = request.getParameter("name");
    id = request.getParameter("id");
    pw = request.getParameter("pw");
    ssnId = request.getParameter("ssn_id");
    email = request.getParameter("email");
    if(name.equals("")||id.equals("") || pw.equals("")||ssnId.equals("")||email.equals("")){    		
    %>
		<h2>이름,아이디,비번,ssn,email 이 없어 실패!!</h2>
		<a href="${context}/member/service/regist.jsp">회원가입</a>
	<% 
    } else {
    		member.setId(id);
			member.setPw(pw);
			member.setName(name);
			member.setSsn(ssnId);
			member.setRegDate();
			member.setBirth();
			member.setEmail(email);
			String msg = service.open(member);
			if(msg.equals("회원가입 축하합니다.")){
				response.sendRedirect("");
			} else if(msg.equals("회원가입 실패")) {
	%>			<h2>회원가입 실패!!</h2>
				<a href="${context}/member/service/regist.jsp">회원가입</a>
	<%		} else if(msg.equals("중복 ID 입니다.")){
	%>         <h2>중복 ID로 회원가입 실패!!</h2>
			   <a href="${context}/member/service/regist.jsp">회원가입</a> 
	<%	}
     }
	 %> 
	</div>
</body>
</html>