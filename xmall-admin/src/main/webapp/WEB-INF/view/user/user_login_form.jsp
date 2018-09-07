<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.placeholder.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.waypoints.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/main.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/animate.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/style.css">
		<script type="text/javascript">
			$(function() {
				$("button").click(function() {
					// 进行异步提交
					var loginForm = $("#loginForm").serialize();
					$.ajax({
						url: "<%=request.getContextPath()%>/user/login",
						type: "post",
						data: loginForm,
						dataType: "json",
						success: function(data) {
							alert("F**king");
						}
					});
				});
			});
		</script>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<form action="/user/login" method="post" class="fh5co-form animate-box" data-animate-effect="fadeInLeft">
						<h2>XMALL管理平台登录</h2>
						<div class="form-group">
							<label for="username" class="sr-only">登录名：</label>
							<input type="text" name="username" class="form-control" id="username" placeholder="请输入登录名" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">登录密码：</label>
							<input type="password" name="password" class="form-control" id="password" placeholder="请输入登录密码" autocomplete="off">
						</div>
						<div class="form-group">
							<input type="submit" value="登录系统" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. More Templates <a href="http://www.augustars.com/" target="_blank" title="Augustars">Augustars-Xmall</a> - Collect from <a href="http://www.augustars.com/" title="XMALL" target="_blank">XMALL</a></small></p></div>
			</div>
		</div>
	</body>
</html>