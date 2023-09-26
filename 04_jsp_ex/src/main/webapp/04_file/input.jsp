<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h3>신규 회원 정보를 입력하세요</h3>
  <form action="agree.jsp" method="post">
    <div>
      <label for="id">아이디</label>
      <input type="text" name="id" id="id">
    </div>
    <div>
      <label for="pw">비밀번호</label>
      <input type="password" name="pw" id="pw">
    </div>
    <div>
      <label for="name">이름</label>
      <input type="text" name="name" id="name">
    </div>
    <div>
      <button type="submit">회원가입</button>
    </div>
  </form>
</body>
</html>