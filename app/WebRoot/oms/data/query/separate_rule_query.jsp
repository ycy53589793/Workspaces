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
    
    <title>分解策略</title>
    
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
    			<td>订单类型</td><td>客户</td><td>运输方式</td><td>是否tms可见</td><td>是否wms可见</td><td>是否bms可见</td>
    		</tr>
    		<tr>
    			<td><s:component theme="theme" templateDir="template" template="popField"/></td>
    			<td><s:component theme="theme" templateDir="template" template="popField"/></td>
    			<td><select><option></option></select></td>
    			<td><select><option></option><option value="Y">是</option><option value="N">否</option></select></td>
    			<td><select><option></option><option value="Y">是</option><option value="N">否</option></select></td>
    			<td><select><option></option><option value="Y">是</option><option value="N">否</option></select></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
