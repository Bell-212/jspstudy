<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
  $(function(){
    $('#result').blur(function(){  // 결과 입력이 끝나고 포커스가 떠날 때 이벤트가 동작한다.
      if (isNaN($(this).val())) {  // $(this)는 $('#result')이다.
        alert('정수만 입력할 수 있습니다.');
        $(this).val('');
        $(this).focus();
      }
    });
  })
</script>
</head>
<body>

  <%-- 1~9 랜덤 2개 생성 --%>
  <c:set var="a" value="<%=(int)(Math.random() * 9) + 1%>"/>
  <c:set var="b" value="<%=(int)(Math.random() * 9) + 1%>"/>

  <%-- String[] operators = {"+", "-", "*", "/", "%"} 배열 생성 --%>
  <c:set var="operators" value="${fn:split('+,-,*,/,%', ',')}"/>
  
  <%-- operators 배열의 랜덤 인덱스(randIdx) 생성 --%>
  <c:set var="rand1" value="<%=Math.random()%>"/>
  <c:set var="length" value="${fn:length(operators)}"/>
  <c:set var="rand2" value="${rand1*length}"/>
  <c:set var="randIdx" value="${rand2-(rand2%1)}"/>
  
  <%-- 연산자 --%>
  <c:set var="op" value="${operators[randIdx]}"/>
  
  <%-- 연산결과 --%>
  <c:choose>
    <c:when test="${randIdx == 0}"><c:set var="answer" value="${a+b}"/></c:when>
    <c:when test="${randIdx == 1}"><c:set var="answer" value="${a-b}"/></c:when>
    <c:when test="${randIdx == 2}"><c:set var="answer" value="${a*b}"/></c:when>
    <c:when test="${randIdx == 3}"><c:set var="answer" value="${a/b}"/></c:when>
    <c:when test="${randIdx == 4}"><c:set var="answer" value="${a%b}"/></c:when>
  </c:choose>
  
  <h3>랜덤 계산기</h3>
  <form action="result.jsp" method="post">
    ${a}&nbsp;${op}&nbsp;${b}&nbsp;=&nbsp;<input type="text" name="result" size="3" id="result">
    <input type="hidden" name="a" value="${a}">
    <input type="hidden" name="b" value="${b}">
    <input type="hidden" name="op" value="${op}">
    <input type="hidden" name="answer" value="${answer}">
    <button>제출</button>
  </form>

</body>
</html>