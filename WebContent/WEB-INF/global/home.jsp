<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="top.jsp" />
<jsp:include page="header.jsp" /> 
<div class="box">
	 <h2>서비스를 이용하시려면 회원가입을 하셔야 합니다.</h2>
	  	<a href="${context}/member/service/regist.do">회원가입 하러 가기</a><br />
		<a href="${context}/member/service/login.do">로그인 하러 가기</a><br />
		<a href="${context}/global/main.do">[임시]글로버 메인</a> 
</div>
<jsp:include page="footer.jsp" />
<jsp:include page="end.jsp" /> 
