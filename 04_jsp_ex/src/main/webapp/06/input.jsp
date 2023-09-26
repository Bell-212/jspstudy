<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%-- 동일한 name을 가진 입력 요소들은 String[] 형태로 전송된다. --%>

  <div>좋아하는 가수 3명을 작성하세요.</div>
  <form action="process.jsp">
    <ol>
      <li><input type="text" name="singers"></li>
      <li><input type="text" name="singers"></li>
      <li><input type="text" name="singers"></li>
    </ol>
    <div>
      <button type="submit">전송</button>
    </div>
  </form>
  
</body>
</html>