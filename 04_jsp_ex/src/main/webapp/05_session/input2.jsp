<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%
    request.setCharacterEncoding("UTF-8");
  %>

  <c:set var="id" value="${param.id}" scope="session"/>
  <c:set var="pw" value="${param.pw}" scope="session"/>
  <c:set var="name" value="${param.name}" scope="session"/>

  <h3>연락처를 입력하세요</h3>
  <form action="input3.jsp" method="post">
    <div>
      <label for="address">주소</label>
      <input type="text" id="address" name="address">
    </div>
    <div>
      <label for="phone">전화번호</label>
      <input type="text" id="phone" name="phone">
    </div>
    <div>
      <label for="email">이메일</label>
      <input type="text" id="email" name="email">
    </div>
    <div>
      <button type="submit">확인</button>
    </div>
  </form>
</body>
</html>