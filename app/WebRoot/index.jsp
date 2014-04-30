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
    
    <title>供应链系统</title>
    <sx:head/>
    
	<script type="text/javascript" src="common/js/jquery-1.6.3.js"></script>
	<script type="text/javascript">
		dojo.event.topic.subscribe("/logisticOrderManager",function(data,type,e) {
			
	    });
	    //动态加载下来框值
	    function getOptions(jsonFileName) {
	    	var event = window.event;
			var obj=event.target || event.srcElement;
			if($('#'+obj.id+' option').length>0) {
				return;
			};
			$('#'+jsonFileName).append("<option></option>");
			var url="common/json/"+jsonFileName+".json";
			$.getJSON(url,function (data) {
				$.each(data,function (idx,item) {
					for (var key in item) {
						$('#'+obj.id).append("<option value='"+key+"'>"+item[key]+"</option>");
					}
				});
			});
		}
		//查询弹出框
		function showPopWin(jsonFileName) {
			var x=$(window).width()/2+"px";
			var y=$(window).height()/2+"px";
			var tag="<div id='query_div' style='background:yellow;position:absolute;z-index:100;width:400px;left:"+x+";top:"+y+";'>"+
						"<div style='text-align:right;'><a onclick='closePopWin();' style='cursor:pointer;'>X</a></div>"+
						"<form action='' style='width:100%;text-align:center;'>"+
							"<select id='"+jsonFileName+"' style='width:100px;' onmousemove=\"getOptions('"+jsonFileName+"')\"></select>"+
							"<input type='text'>"+
							"<input type='submit' value='查询'>"+
							"<input type='reset' value='重置'>"+
						"</form>"+
						"<table style='width:100%;height:100%;'>"+
							"<tr>"+
								"<th>列头</th>"+
							"</tr>"+
							"<tr>"+
								"<td style='text-align:center;'>列值</td>"+
							"</tr>"+
						"</table>"+
					"</div>";
			$(document.body).append(tag);
			$("#query_div").animate();
		}
		//关闭查询弹出框
		function closePopWin() {
			$("#query_div").remove();
		}
	</script>
  </head>
  
  <body id="index_body">
  	<jsp:include page="head.jsp"/>
  	<div id="result" class="center">
	    
    </div>
  </body>
</html>
