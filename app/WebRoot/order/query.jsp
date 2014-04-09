<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>物流订单管理</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="queryAction.action" method="post">
	    <table>
	    	<tr>
	    		<td colspan="6"><input type="submit" value="查询"/><input type="reset" value="重置"/></td>
	    	</tr>
	    	<tr>
	    		<td>系统订单号</td><td>物流订单号</td><td>订单类型</td><td>运输方式</td><td>客户</td><td>下单联系人</td>
	    	</tr>
	    	<tr>
	    		<td><input type="text" name=""/></td><td><input type="text" name=""/></td><td><input type="text" name=""/></td>
	    		<td><input type="text" name=""/></td><td><input type="text" name=""/></td><td><input type="text" name=""/></td>
	    	</tr>
	    	<tr>
	    		<td>下单时间从</td><td>下单时间到</td><td>要求提货时间从</td>
	    		<td>要求提货时间到</td><td>要求送达时间从</td><td>要求送达时间到</td>
	    	</tr>
	    	<tr>
	    		<td><input type="text" name=""/></td><td><input type="text" name=""/></td><td><input type="text" name=""/></td>
	    		<td><input type="text" name=""/></td><td><input type="text" name=""/></td><td><input type="text" name=""/></td>
	    	</tr>
	    	<tr>
	    		<td>创建人</td>
	    	</tr>
	    	<tr>
	    		<td><input type="text" name=""/></td>
	    	</tr>
	    </table>
    </form>
  </body>
</html>
