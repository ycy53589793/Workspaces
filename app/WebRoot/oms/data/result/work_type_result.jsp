<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="ec" uri="http://www.ecside.org"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>作业类型管理</title>
    
  </head>
  
  <body>
    <table class="colresizable_table" border="0" cellpadding="0" cellspacing="0">
    	<tr>
    		<th class="colresizable_th">作业类型</th>
    	</tr>
    	<tr>
    		<td class="colresizable_td_bottom colresizable_td_left colresizable_td_right colresizable_td_bottom">..</td>
    	</tr>
    </table>
  </body>
</html>
