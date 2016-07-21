<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="member.MemberBean" %>     
<%@ page import="member.MemberService" %>     
<%@ page import="member.MemberServiceImpl" %>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/navi.jsp" />
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
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>