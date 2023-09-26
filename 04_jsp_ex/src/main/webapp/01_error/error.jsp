<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 이 페이지는 에러 페이지라고 명시한다. --%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
  <%-- exception 객체는 Jsp 내장 객체 중 하나로 언제든지 사용할 수 있다. --%>
  
  <div>
    요청을 처리하는 과정에서 오류가 발생했습니다.<br><br>
    예외 타입: <%=exception.getClass().getName()%><br>
    예외 메시지: <%=exception.getMessage()%><br><br>
    <a href="mailto:admin@home.com">오류 신고하기</a><br>
    <a href="input.jsp">처음부터 다시하기</a>
  </div>
  
</body>
</html>