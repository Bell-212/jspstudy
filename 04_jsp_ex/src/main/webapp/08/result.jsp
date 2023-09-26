<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%--
    
    모든 파라미터는 문자열 타입이다.
    ${param.number} 역시 문자열이기 때문에 크기 비교 연산이 잘못될 우려가 있다.
    
    예를 들어 본다.
      1) '5' > 3  은 '5' > '3'  으로 인식되면서 true로 인식된다. (문자 5가 문자 3 보다 크다.)
      2) '5' > 30 은 '5' > '30' 으로 인식되면서 true로 인식된다. (문자 5가 문자 3 보다 크다.)
    
    따라서, parameter의 크기 비교는 뺄셈으로 변환 후 처리한다.
    
    예를 들어 본다.
      1) '5' > 3  은 '5' - 3 > 0  으로 바꾼다. 그럼 5 - 3 > 0  으로 인식되면서 true로 인식된다. (문자와 숫자의 뺄셈 연산은 자동으로 숫자 연산으로 처리된다.)
      2) '5' > 30 은 '5' - 30 > 0 으로 바꾼다. 그럼 5 - 30 > 0 으로 인식되면서 false로 인식된다.(문자와 숫자의 뺄셈 연산은 자동으로 숫자 연산으로 처리된다.)
    
  --%>

  <c:if test="${param.number - 0 >= 0}">
    <c:set var="abs" value="${param.number}" />
  </c:if>
  <c:if test="${param.number - 0 < 0}">
    <c:set var="abs" value="${param.number * -1}" />
  </c:if>

  <h3>${param.n}의 절대값은 ${abs}이다.</h3>

</body>
</html>