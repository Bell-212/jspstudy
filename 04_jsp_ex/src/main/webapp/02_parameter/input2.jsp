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
    
  <form action="result.jsp">
    <h3><label for="player">2. 좋아하는 운동선수는 누구인가요?</label></h3>
    <div>
      <input type="text" name="player" id="player">
      <input type="hidden" name="name" value="${param.name}">
      <input type="hidden" name="celeb" value="${param.celeb}">
      <button type="submit">결과보기</button>
    </div>
  </form>

</body>
</html>