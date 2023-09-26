<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <% request.setCharacterEncoding("UTF-8"); %>
  
  <h3>${param.name}님의 선호도 조사 결과</h3>
  <ul>
    <li>좋아하는 연예인: ${param.celeb}</li>
    <li>좋아하는 운동선수: ${param.player}</li>
  </ul>
  <button type="button" onclick="location.href='input1.jsp'">처음부터 다시하기</button>
  
</body>
</html>