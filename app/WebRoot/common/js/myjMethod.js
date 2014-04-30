(function ($) {
	/**
	 * 动态获取下来框的值
	 * jsonFilePath:json文件的名称,下来框值用json格式存储
	 */
	function getOptions(jsonFileName) {
		if($('#'+jsonFileName+' option').length>0) {
			return;
		};
		var url="common/json/"+jsonFileName+".json";
		$.getJSON(url,function (data) {
			$.each(data,function (idx,item) {
				for (var key in item) {
					$('#'+jsonFileName).append("<option value='"+key+"'>"+item[key]+"</option>");
				}
			});
		});
	}
})(jQuery);