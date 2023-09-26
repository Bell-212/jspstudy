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

  <%
    request.setCharacterEncoding("UTF-8");
  %>
  <c:set var="address" value="${param.address}" scope="session"/>
  <c:set var="phone" value="${param.phone}" scope="session"/>
  <c:set var="email" value="${param.email}" scope="session"/>

  <h3>추가정보를 입력하세요</h3>
  <form action="process.jsp" method="post">
    <div>
      <label for="year">생년월일</label> 
      <input type="text" name="year" id="year" size="5">년
      <input type="text" name="month" size="3">월
      <input type="text" name="day" size="3">일
    </div>
    <div>    
      결혼여부 
      <input type="radio" name="marriage" id="yes" value="미혼"><label for="yes">미혼</label>
      <input type="radio" name="marriage" id="no" value="기혼"><label for="no">기혼</label>
    </div>
    <div>
      <label for="job">직업</label> 
      <select name="job" id="job">
        <option value="developer">개발자</option>
        <option value="doctor">의사</option>
        <option value="etc">기타</option>
      </select>
    </div>
    <div>
      <button type="submit">확인</button>
    </div>
  </form>
</body>
</html>