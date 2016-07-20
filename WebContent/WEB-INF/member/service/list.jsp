<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원검색</title>
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
</head>
<body>
<div class="box">
	<h1>목록보기</h1>
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
		<a href="${context}/member/member_controller.jsp">
			<img src="${img}/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="${context}/index.jsp">
			<img src="${img}/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
</div>		
</body>
</html>