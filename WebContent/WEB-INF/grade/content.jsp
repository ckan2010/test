<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <jsp:include page="../global/top.jsp" /> -->
<!-- <jsp:include page="../global/header.jsp" /> -->
<style type="text/css">
	div.memberClass{font-size: 20px}
</style>
	<div id="box" class="memberClass box">
	<h1>성적관리</h1>
	<div style="width: 300px;margin: 0 auto;text-align: left;">
 	<ol>
 		<li><a href="${context}/grade/regist.do">등록</a></li>
 		<li><a href="${context}/grade/update.do">수정</a></li>
 		<li><a href="${context}/grade/delete.do">삭제</a></li>
 		<li><a href="${context}/grade/list.do">목록</a></li>
 		<li><a href="${context}/grade/count.do">카운트</a></li>
 		<li><a href="${context}/grade/search.do">검색</a></li>
 	</ol>
 	</div>
	</div>
<!-- <jsp:include page="../global/footer.jsp"/> -->
<!-- <jsp:include page="../global/end.jsp"/> -->