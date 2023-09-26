<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  
  // String[]을 List로 변경한 뒤 request에 속성(attribute)으로 저장함
  List<String> singers = Arrays.asList(request.getParameterValues("singers"));
  request.setAttribute("singers", singers);
  
  // request를 전달할 수 있는 forward를 이용해서 결과 페이지로 이동함
  request.getRequestDispatcher("result.jsp").forward(request, response);
%>