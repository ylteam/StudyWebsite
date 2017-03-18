<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>中学生学习交流网站</title>
  </head>
  
  <frameset rows="90,*" frameborder="0" border="0" framespacing="0" id="mainFrameset" style="width:100%; height:100%; margin:0 auto;">
  <frame src="./jsp/head.jsp" name="topFrame" scrolling="NO" noresize>
  <frameset cols="205,*" frameborder="0" id="subFrameset">
    <frame src="./jsp/new_option.jsp" name="opFrame" scrolling="no" noresize></frame>
    <frame src="./jsp/home.jsp" name="mainFrame" id="mainFrame" scrolling="yes" ></frame>
  </frameset>
</frameset>
  <body>
${message}
  </body>
</html>

