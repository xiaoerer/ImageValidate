<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>验证码</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		function refresh(obj){
			obj.src="imageServlet?"+Math.random();
		}
	</script>
  </head>
  
  <body>
    <form action="checkServlet" method="post">
    	<label>输入验证码：</label>
    	<input type="text" name="randomCode"/>
    	<img title="点击"  onclick="javascript:refresh(this);" src="imageServlet"/>
    	<br/>
    	<input type="submit" value="提交">
    </form>
  </body>
</html>
