<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <% session.invalidate(); %>

  <h3>개인정보를 입력하세요.</h3>
  <form action="input2.jsp" method="post">
    <div>
      <label for="id">아이디</label>
      <input type="text" id="id" name="id">
    </div>
    <div>
      <label for="pw">비밀번호</label>
      <input type="password" id="pw" name="pw">
    </div>
    <div>
      <label for="name">이름</label>
      <input type="text" id="name" name="name">
    </div>
    <div>
      <button type="submit">확인</button>
    </div>
  </form>
  
</body>
</html>