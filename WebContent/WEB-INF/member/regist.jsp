<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/navi.jsp" />
<link rel="stylesheet" href="${css}/global.css" />
<style type="text/css">
	span.meta{position:absolute;margin:0 0 0 -65px;}
	div.joinDiv{border: 1px dotted gray;width: 80%;margin: 10px 50px 10px 50px}
</style>	
	<div class = "box">
	<h1>회원가입</h1>
	<form action="${context}/member/regist.do" method="post">
		<span class="meta">이름</span><input type="text" name="name" /><br />
		<span class="meta">ID</span><input type="text" name="id" /><br />
		<span class="meta">비밀번호</span><input type="password" name="pw" /><br />
		<span class="meta">SSN</span><input type="text" name="ssn_id"/><br />
		<span class="meta">이메일</span><input type="text" name="email"/><br />
		<br /><br /><br />
		<input type="submit" value="회원가입"/>
		<input type="reset" onclick=" location='${context}/index.jsp'" value="취소" />
	</form>
	</div>
	<jsp:include page="../global/footer.jsp"/>
	<jsp:include page="../global/end.jsp"/>