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

  <%-- 속성으로 전달된 List --%>
  <c:forEach var="singer" items="${singers}" varStatus="vs">
    <div>좋아하는 가수${vs.index + 1} : ${singer}</div>
  </c:forEach>

  <%-- 파라미터로 전달된 String[] --%>
  <c:forEach var="singer" items="${paramValues.singers}" varStatus="v">
    <div>좋아하는 가수${v.count} : ${singer}</div>  <%-- v.count는 v.index + 1과 같다. --%>
  </c:forEach>
  
</body>
</html>