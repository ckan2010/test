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
	<h2>회원가입</h2>
	<form action="${context}/member.do" method="post">
		<span class="meta">이름</span><input type="text" name="name" /><br />
		<span class="meta">ID</span><input type="text" name="id" /><br />
		<span class="meta">비밀번호</span><input type="password" name="pw" /><br />
		<span class="meta">SSN</span><input type="text" name="ssn_id"/><br />
		<span class="meta">이메일</span><input type="text" name="email"/><br />
		<span class="meta">전화번호</span><input type="text" name="phone"/><br />
		<span class="meta">전공</span> <br /><br />
		<input type="radio" name="major" value="computer" checked/> 컴공학부
		<input type="radio" name="major" value="mgmt" /> 경영학부
		<input type="radio" name="major" value="math" /> 수학부 
		<input type="radio" name="major" value="eng" /> 영문학부 <br /><br /><br/></brr>
		<span class="meta">수강과목</span> <br /><br />
		<input type="checkbox" name="subject" value="java" /> Java
		<input type="checkbox" name="subject" value="sql" /> SQL
		<input type="checkbox" name="subject" value="cpp" /> C++
		<input type="checkbox" name="subject" value="python" /> 파이썬
		<input type="checkbox" name="subject" value="delphi" /> 델파이
		<input type="checkbox" name="subject" value="html" /> HTML
		<br /><br />
		<input type="hidden" name="action" value="regist" />
		<input type="submit" value="회원가입"/>
		<input type="reset" onclick=" location='${context}/index.jsp'" value="취소" />
	</form>
	</div>
	<jsp:include page="../global/footer.jsp"/>
	<jsp:include page="../global/end.jsp"/>