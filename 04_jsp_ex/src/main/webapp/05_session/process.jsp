<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");

  String year = request.getParameter("year");
  String month = request.getParameter("month");
  String day = request.getParameter("day");
  String marriage = request.getParameter("marriage");
  String job = request.getParameter("job");
  
  session.setAttribute("birthday", year + "년 " + month + "월 " + day + "일");
  session.setAttribute("marriage", marriage);
  session.setAttribute("job", job);
  
  response.sendRedirect("result.jsp");
%>