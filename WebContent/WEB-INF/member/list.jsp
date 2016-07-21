<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/navi.jsp" />
<link rel="stylesheet" href="${css}/member.css" />
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
<div class="box">
	<h2>리스트</h2>
	<table>
  <tr>
    <th>ID</th>
    <th>이 름</th>
    <th>등록일</th>
    <th>생년월일</th>
  </tr>
  <tr>
    <td>hong</td>
    <td><a href="detail.jsp">홍길동</a></td>
    <td>2016-07-03</td>
    <td>900101</td>
  </tr>
  <tr>
    <td>lee</td>
    <td><a href="detail.jsp">이순신</a></td>
    <td>2016-06-03</td>
    <td>920201</td>
  </tr>
  <tr>
    <td>park</td>
    <td><a href="detail.jsp">박지성</a></td>
    <td>2016-05-03</td>
    <td>930301</td>
  </tr>
  <tr>
    <td>kim</td>
    <td><a href="detail.jsp">김유신</a></td>
    <td>2016-05-13</td>
    <td>020401</td>
  </tr>
</table>
</div>		
<jsp:include page="../global/footer.jsp"/>
<jsp:include page="../global/end.jsp"/>