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
    
    <title>分解策略管理</title>
    <sx:head/>
    
  </head>
  
  <body>
  	<form action="omsLoadSeparateRuleQueryPage.action" method="post">
  		<div id="toolBar">
	  		<sx:submit type="button" label="返回" targets="result"/>
	  	</div>
  	</form>
  	<sx:tabbedpanel id="separateRuleResultTab">
  		<sx:div label="策略列表">
  			<table class="colresizable_table" border="0" cellpadding="0" cellspacing="0" width="1000px">
		    	<tr>
		    		<th class="colresizable_th">订单类型</th><th class="colresizable_th">客户</th><th class="colresizable_th">运输方式</th>
		    		<th class="colresizable_th">bms系统是否可见</th><th class="colresizable_th">tms系统是否可见</th><th class="colresizable_th">wms系统是否可见</th>
		    	</tr>
		    	<tr>
		    		<td class="colresizable_td_bottom colresizable_td_left">..</td>
		    		<td class="colresizable_td">..</td><td class="colresizable_td">..</td>
		    		<td class="colresizable_td">..</td><td class="colresizable_td">..</td>
		    		<td class="colresizable_td_right colresizable_td_bottom">..</td>
		    	</tr>
		    </table>
		    <jsp:include page="work_type_result.jsp"></jsp:include>
  		</sx:div>
  		<sx:div label="策略明细">
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
  		</sx:div>
  	</sx:tabbedpanel>
  </body>
</html>
