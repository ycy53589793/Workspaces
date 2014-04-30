<html>
    <body>
      <div>
      	  <#if parameters.selectOptions?exists>
      	  	<#list parameters.selectOptions as option>
  		  		<input type="text"/><img src="resource/img/sousuo.png" onclick="showPopWin('${option}');"/>
  		  	</#list>
  		  </#if>
  	  </div>
  </body>
</html>
