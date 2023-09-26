<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <form action="result.jsp">
    <h3>성적 입력 화면</h3>
    <div>
      <label for="kor">국어</label>
      <input type="text" name="kor" id="kor">
    </div>
    <div>
      <label for="eng">영어</label>
      <input type="text" name="eng" id="eng">
    </div>
    <div>
      <label for="math">수학</label>
      <input type="text" name="math" id="math">
    </div>
    <div>
      <button type="submit">결과 보기</button>
      <button type="reset">다시 작성</button>
    </div>
  </form>
  
</body>
</html>
