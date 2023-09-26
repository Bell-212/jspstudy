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

  <c:if test="${param.answer == param.result}">
    <div>${param.a}${param.op}${param.b}=${param.result}</div>
    <div>정답입니다.</div>
  </c:if>
  <c:if test="${param.answer != param.result}">
    <div>제출 : ${param.a}${param.op}${param.b}=${param.result}</div>
    <div>정답 : ${param.a}${param.op}${param.b}=${param.answer}</div>
  </c:if>

  <div>
    <a href="input.jsp">다시풀기</a>
  </div>

</body>
</html>