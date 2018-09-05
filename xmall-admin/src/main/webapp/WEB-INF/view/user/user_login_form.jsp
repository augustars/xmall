<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-3.3.1.min.js"></script>
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
		<form id="loginForm">
			<table>
				<caption>用户登录</caption>
				<tr>
					<td align="right">登录名：</td>
					<td>
						<input type="text" name="username"/>
					</td>
				</tr>
				<tr>
					<td align="right">密码：</td>
					<td>
						<input type="password" name="password"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<button type="button">登录</button>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>