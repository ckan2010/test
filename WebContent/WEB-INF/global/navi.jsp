<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="nav">
    <div style="text-align:right;color:white;text-decoration: none;background-color: #333;">${member.name}님 환영합니다</div>
	<ul>
  		<li class="active"><a href="${context}/member.do">회원관리</a></li>
  		<li class="active"><a href="${context}/grade.do">성적관리</a></li>
  		<li class="active"><a href="${context}/account.do">계좌관리</a></li>
  		<li class="active"><a href="${context}/global.do?page=school_info">학교소계</a></li>
  </ul>
</div>