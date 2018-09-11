<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/style.css">
	</head>
	<body>
		<div id="container">
			<form action="/user/login" method="post">
				<div class="login">XMALL管理平台登录</div>
				<div class="username-text">登录名:</div>
				<div class="password-text">登录密码:</div>
				<div class="username-field">
					<input type="text" name="username" id="username" placeholder="请输入登录名"/>
				</div>
				<div class="password-field">
					<input type="password" name="password" id="password" placeholder="请输入登录密码"/>
				</div>
				<input type="submit" name="submit" value="登录" />
			</form>
		</div>
		<div id="footer">
			Web 2.0 Login More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
		</div>
	</body>
</html>