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
    
    <title>导航页</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <p>
    	<s:url id="logisticOrder" value="omsLoadOrderQueryPage.action"></s:url>
    	<sx:a href="%{logisticOrder}" targets="result">物流订单管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<s:url id="separateRule" value="omsLoadSeparateRuleQueryPage"></s:url>
    	<sx:a href="%{separateRule}" targets="result">分解策略管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<sx:a>作业类型管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<sx:a>订单拆分管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<sx:a>订单合并管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<sx:a>状态配置管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<sx:a>报表配置管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<sx:a>导入配置管理</sx:a>&nbsp;&nbsp;&nbsp;&nbsp;
    	<sx:a>基础数据管理</sx:a><!-- 颜色 用户 状态 -->
    </p>
  </body>
</html>
