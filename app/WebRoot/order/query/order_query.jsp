<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>物流订单管理</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="orderQueryAction.action" method="post">
    	<div id="toolBar">
    		<sx:submit type="button" label="查询" targets="result"/>
    		<input type="reset" value="重置"/>
    	</div>
	    <table>
	    	<tr><td colspan="6">单头信息</td></tr>
	    	<tr>
	    		<td>系统订单号</td><td>物流订单号</td><td>订单类型</td><td>运输方式</td><td>客户</td><td>下单联系人</td>
	    	</tr>
	    	<tr>
	    			<!-- 系统订单号 -->						 <!-- 物流订单号 -->	
	    		<td><input type="text" name=""/></td><td><input type="text" name=""/></td>
	    			<!-- 订单类型 -->
	    		<td><s:component theme="theme" templateDir="template" template="popField"/></td>
	    			<!-- 运输方式 -->
	    		<td><select><option></option></select></td>
	    			<!-- 客户 -->
	    		<td><s:component theme="theme" templateDir="template" template="popField"/></td>
	    			<!-- 下单联系人 -->
	    		<td><input type="text" name=""/></td>
	    	</tr>
	    	<tr>
	    		<td>下单时间从</td><td>下单时间到</td><td>要求提货时间从</td>
	    		<td>要求提货时间到</td><td>要求送达时间从</td><td>要求送达时间到</td>
	    	</tr>
	    	<tr>
	    			<!-- 下单时间从 -->													 <!-- 下单时间到 -->
	    		<td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td><td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td>
	    			<!-- 要求提货时间从 -->												 <!-- 要求提货时间到 -->
	    		<td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td><td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td>
	    			<!-- 要求送达时间从 -->												 <!-- 要求送达时间到 -->
	    		<td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td><td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td>
	    	</tr>
	    	<tr>
	    		<td>创建人</td><td>订单来源</td><td>采购单号</td><td>销售单号</td><td>提货单号</td><td>是否紧急</td>
	    	</tr>
	    	<tr>	<!-- 创建人 -->						 <!-- 订单来源 -->
	    		<td><input type="text" name=""/></td><td><select><option></option></select></td>
	    			<!-- 采购单号 -->						 <!-- 销售单号 -->						  <!-- 提货单号 -->
	    		<td><input name="" type="text"/></td><td><input type="text" name=""/></td><td><input type="text" name=""/></td>
	    			<!-- 是否紧急 -->
	    		<td><select><option></option><option value="Y">是</option><option value="N">否</option></select></td>
	    	</tr>
	    	<tr>
	    		<td>发货方</td><td>发货地点</td><td>收货方</td><td>收货地点</td><td>失效日期</td><td>付款方式</td>
	    	</tr>
	    	<tr>
	    			<!-- 发货方 -->
	    		<td><s:component theme="theme" templateDir="template" template="popField"/></td>
	    			<!-- 发货地点 -->
	    		<td><s:component theme="theme" templateDir="template" template="popField"/></td>
	    			<!-- 收货方 -->
	    		<td><s:component theme="theme" templateDir="template" template="popField"/></td>
	    			<!-- 收货地点 -->
	    		<td><s:component theme="theme" templateDir="template" template="popField"/></td>
	    			<!-- 失效日期 -->
	    		<td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td>
	    			<!-- 付款方式 -->
	    		<td><select><option></option></select></td>
	    	</tr>
	    	<tr>
	    		<td>是否预约</td><td>预约时间</td><td>预约单号</td><td>仓库</td><td>基地</td><td>温层</td>
	    	</tr>
	    	<tr>
	    			<!-- 是否预约 -->
	    		<td><select><option></option><option value="Y">是</option><option value="N">否</option></select></td>
	    			<!-- 预约时间 -->
	    		<td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td>
	    			<!-- 预约单号 -->						 <!-- 仓库 -->
	    		<td><input type="text" name=""/></td><td><s:component theme="theme" templateDir="template" template="popField"/></td>
	    			<!-- 基地 -->																	<!-- 温层 -->
	    		<td><s:component theme="theme" templateDir="template" template="popField"/></td><td><select><option></option></select></td>
	    	</tr>
	    	<tr>
	    		<td>状态</td><td>创建时间从</td><td>创建时间到</td><td colspan="3">备注</td>
	    	</tr>
	    	<tr>
	    			<!-- 状态 -->								   <!-- 创建时间从 -->
	    		<td><select><option></option></select></td><td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td>
	    			<!-- 创建时间到 -->																 <!-- 备注 -->
	    		<td><sx:datetimepicker displayFormat="yyyy-MM-dd hh:mm:ss"/></td><td colspan="3"><input type="text" name=""></td>
	    	</tr>
	    	<tr><td colspan="6">商品信息</td></tr>
	    </table>
    </form>
  </body>
</html>
