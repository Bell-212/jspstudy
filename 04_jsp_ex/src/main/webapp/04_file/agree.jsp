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

  <h3>이용 약관</h3>
  <pre>
  -------------------------------------------------------------
  1. 회원 정보는 웹 사이트 운영을 위해서만 사용됩니다.
  2. 원치 않으면 정보 제공을 하지 않을 수 있습니다.
  3. 다만 이 경우 정상적인 웹 사이트 이용이 제한됩니다. 
  -------------------------------------------------------------
  </pre>
  <form action="process.jsp" method="post">
    <div>위 약관에 동의하십니까?</div>
    <div>
      <input type="radio" name="agreement" id="yes" value="yes"><label for="yes">동의 함</label>
      <input type="radio" name="agreement" id="no" value="no"><label for="no">동의 안 함</label>
      <input type="hidden" name="id" value="${param.id}">
      <input type="hidden" name="pw" value="${param.pw}">
      <input type="hidden" name="name" value="${param.name}">
    </div>
    <div>
      <button type="submit">회원가입</button>
    </div>
  </form>
  
</body>
</html>