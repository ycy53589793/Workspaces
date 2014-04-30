<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>作业类型管理</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="separateRuleQueryAction.action" method="post">
    	<div id="toolBar">
    		<sx:submit type="button" label="查询" targets="result"/>
    		<input type="reset" value="重置"/>
    	</div>
    	<table>
    		<tr>
    			<td>作业类型</td>
    		</tr>
    		<tr>
    			<td><s:component theme="theme" templateDir="template" template="popField"/></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
