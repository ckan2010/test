<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- <jsp:include page="../global/top.jsp" /> -->
<!-- <jsp:include page="../global/header.jsp" /> -->
<style type="text/css">
	div.memberClass{font-size: 20px}
</style>
	<div id="box" class="memberClass box">
	<h1>계좌관리</h1>
	<div style="width: 300px;margin: 0 auto;text-align: left;">
 	<ol>
 		<li><a href="${context}/account/regist.do">개설</a></li>
 		<li><a href="${context}/account/deposit.do">입금</a></li>
 		<li><a href="${context}/account/withdraw.do">출금</a></li>
 		<li><a href="${context}/account/update.do">수정</a></li>
 		<li><a href="${context}/account/delete.do">해지</a></li>
 		<li><a href="${context}/account/list.do">목록</a></li>
 		<li><a href="${context}/account/search.do">조회</a></li>
 		<li><a href="${context}/account/count.do">통장수</a></li>
 	</ol>
 	</div>
	</div>
<!-- <jsp:include page="../global/footer.jsp"/> -->
<!-- <jsp:include page="../global/end.jsp"/> -->