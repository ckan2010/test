<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %> 
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/navi.jsp" />
<link rel="stylesheet" href="${css}/member.css" /><div class="box">
<style type="text/css">
	span.meta{position:absolute;margin:1px 0 0 -110px;}
</style>
<% 		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
%>
	<h2>탈퇴</h2>
		<form action="${context}/member/result/delete.jsp" method="post">
		    <input type="hidden" name="id" value="<%=member.getId() %>" />
			<input type="hidden" name="pw" value="<%=member.getPw() %>" />
			<span class="meta">비밀번호 확인</span> <input type="password" name="confpw" />
			</br></br>			
			<input type="submit" value="탈 퇴"/>
	   		<input type="reset" value="취 소"/>
	   </form>
	</div>
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>