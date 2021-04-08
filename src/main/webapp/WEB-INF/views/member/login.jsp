<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@500&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
* {
	font-family: 'Noto Sans JP', sans-serif; /* 목록에 점없는거. */
	list-style: none; /* 밑줄점없앰. */
	text-decoration: none; /* 테이블 붙임 */
	border-collapse: collapse;
	margin: 0px;
	padding: 0px;
	color: black;
}

.header {
	height: 400px;
	width: 1280px;
	text-align: center;
	margin: auto;
	background-color: blanchedalmond;
}

.login {
	margin-top: 200px;
	font-size: 30px;
}

.login_ID {
	display: flex;
	justify-content: center;
}

.login_paasword {
	margin-top: 10px;
}

.input-group {
	
}

.form-control {
	width: 300px;
	height: 39px;

	/* 로그인 비번 아이디 텍스트상자 */
}

.login_IDlogin {
	margin-left: 10px;
	height: 80px;
	width: 149px;
	background-color: #a9b3bc;
}

.login_Member {
	justify-content: center;
	display: flex;
}

.login_Member>a {
	margin-top: 15px;
	margin-left: 8px;
	height: 50px;
	font-size: 16px;
}

.login_Member :nth-child(1) {
	width: 205px;
}

.login_Member :nth-child(2) {
	background-color: #b6b6b6;
	width: 121px;
}

.login_Member :nth-child(3) {
	background-color: #b6b6b6;
	width: 121px;
}
</style>
</head>

<body>
	<div class="wrap">
		<div class="header"></div>
		<div class="login">
			<form action="loginAction" method="POST">
				<div class="login_ID">
					<div class="login_IDbutton">
						<input type="text" class="form-control" placeholder="Id" name="user_id">
						<input type="password" class="form-control login_paasword" placeholder="paasword" name="user_pw">
					</div>
					<div>
						<input type="submit" class="btn btn-secondary btn-lg login_IDlogin" value="로그인"></input>
					</div>
				</div>
			</form>

			<div class="login_Member">
				<a class="btn btn-secondary btn-lg" a href="main.jsp">회원가입</a> <a
					class="btn btn-secondary btn-lg" a href="main.jsp">아이디 찾기</a> <a
					class="btn btn-secondary btn-lg" a href="main.jsp">비번 찾기</a>
			</div>
		</div>
	</div>
</body>
</html>
