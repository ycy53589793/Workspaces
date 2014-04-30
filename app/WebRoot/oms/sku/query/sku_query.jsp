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
    
    <title>商品管理</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table>
    	<tr>
    		<td>商品名称</td><td>包装规格</td><td>包装单位</td><td>温层</td><td>商品类型</td><td>制造商</td>
		</tr>
		<tr>
				<!-- 商品名称 -->						 <!-- 包装规格 -->
			<td><input type="text" name=""/></td><td><s:component theme="theme" templateDir="template" template="popField"/></td>
				<!-- 包装单位 -->							   <!-- 温层 -->
			<td><select><option></option></select></td><td><select><option></option></select></td>
				<!-- 商品类型 -->						 <!-- 制造商 -->
			<td><input type="text" name=""/></td><td><input type="text" name=""/></td>
		</tr>
		<tr>
    		<td>商品条码</td><td>生产日期</td><td>有效期</td><td>有效期单位</td><td colspan="2">备注</td>
		</tr>
		<tr>
				<!-- 商品条码 -->						 <!-- 生产日期 -->
			<td><input type="text" name=""/></td><td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td>
				<!-- 有效期 -->						 <!-- 有效期单位 -->											<!-- 备注 -->
			<td><input type="text" name=""/></td><td><select><option></option></select></td><td colspan="2"><input type="text" name=""/></td>
		</tr>
    </table>
  </body>
</html>
