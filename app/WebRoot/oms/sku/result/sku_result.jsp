<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品管理</title>
    
  </head>
  
  <body>
    <table class="colresizable_table" border="0" cellpadding="0" cellspacing="0" width="2000px">
    	<tr>
    		<th class="colresizable_th">商品名称</th><th class="colresizable_th">包装规格</th><th class="colresizable_th">包装单位</th>
    		<th class="colresizable_th">包装数量</th><th class="colresizable_th">EA数</th><th class="colresizable_th">毛重</th>
    		<th class="colresizable_th">净重</th><th class="colresizable_th">体积</th><th class="colresizable_th">单价</th>
    		<th class="colresizable_th">金额</th><th class="colresizable_th">温层</th><th class="colresizable_th">备注</th>
    		<th class="colresizable_th">商品类型</th><th class="colresizable_th">生产日期</th><th class="colresizable_th">有效期</th>
    		<th class="colresizable_th">有效期单位</th><th class="colresizable_th">制造商</th><th class="colresizable_th">条码</th>
    	</tr>
    	<tr>
    		<td class="colresizable_td_bottom colresizable_td_left">..</td>
    		<td class="colresizable_td">..</td><td class="colresizable_td">..</td><td class="colresizable_td">..</td>
    		<td class="colresizable_td">..</td><td class="colresizable_td">..</td><td class="colresizable_td">..</td>
    		<td class="colresizable_td">..</td><td class="colresizable_td">..</td><td class="colresizable_td">..</td>
    		<td class="colresizable_td">..</td><td class="colresizable_td">..</td><td class="colresizable_td">..</td>
    		<td class="colresizable_td">..</td><td class="colresizable_td">..</td><td class="colresizable_td">..</td>
    		<td class="colresizable_td">..</td>
    		<td class="colresizable_td_right colresizable_td_bottom">..</td>
    	</tr>
    </table>
  </body>
</html>
