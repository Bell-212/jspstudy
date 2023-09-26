<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  
  String filename = request.getParameter("filename");
  String path = "C:/storage";
  
  File file = new File(path, filename);
  if (file.exists()) {
    file.delete();
  }
  
  pageContext.setAttribute("exists", file.exists());  // 삭제 여부 확인
%>
<script>
  if (${exists}) {
    alert('탈퇴되지 않았습니다.');
    history.back();
  } else {
    alert('탈퇴되었습니다. 이용해 주셔서 감사합니다.');
    location.href = 'input.jsp';
  }
</script>