<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success</title>
</head>
<body>
SUCCESS
<div class="tags" style="width:500px; height:500px; background-color:#000; position:relative;">
 <ul>
 </ul>
</div>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery-1.7.2.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/jquery.tagsphere.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/scripts/ext/jquery.mousewheel.min.js"></script>
<script type="text/javascript">
	$(function() {
		var content = "";
		for(var i=0;i<200;i++) {
			content += "<li><a href='#' rel='20'>${requestScope.inputs[0]}</a></li>";
		}
		$(".tags ul").html(content);
		$('.tags').tagcloud({centrex:100,centrey:100});
	});
</script>
</body>
</html>