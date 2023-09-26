<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%-- request에 age는 파라미터(Parameter)로 포함되어 있고, map은 속성(Attribute)으로 포함되어 있다. --%>

  <h1>${map.result1}</h1>
  <div>
    당신의 나이는 ${param.age}살 이므로 주류 구매가 ${map.result2}합니다.
  </div>
  <br><br>
  <a href="input.jsp">처음으로 이동</a>
  
</body>
</html>