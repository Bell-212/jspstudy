<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
  
  <%
    request.setCharacterEncoding("UTF-8");
  
    String path = "C:/storage";
    String filename = request.getParameter("filename");
    File file = new File(path, filename);
    BufferedReader br = new BufferedReader(new FileReader(file));
    StringBuilder sb = new StringBuilder();
    String line = null;
    while ((line = br.readLine()) != null) {
      sb.append("<div>" + line + "</div>");
    }
    if (br != null) {
      br.close();
    }
  %>
  
  <h1>가입되었습니다.</h1>
  <h3>가입내용</h3>
  <div><%=sb.toString()%></div>
  
  <form id="frm" action="leave.jsp" method="post">
    <input type="hidden" name="filename" value="${param.filename}">
    <button type="submit">탈퇴</button>
  </form>
  <script>
    $('#frm').submit(function(event){
      if (!confirm('정말 탈퇴하시겠습니까?')) {
        event.preventDefault();
        return;
      }
    }
  </script>

</body>
</html>