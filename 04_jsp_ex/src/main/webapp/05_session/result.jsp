<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h3>가입내용</h3>
  
  <ul>
    <li>아이디: ${id}</li>
    <li>비밀번호: ${pw}</li>
    <li>성명: ${name}</li>
    <li>주소: ${address}</li>
    <li>연락처: ${phone}</li>
    <li>이메일: ${email}</li>
    <li>생년월일: ${birthday}</li>
    <li>결혼여부: ${marriage}</li>
    <li>직업: ${job}</li>
  </ul>
  
  <div>상기 조건으로 가입되었습니다. 감사합니다.</div>
  
</body>
</html>