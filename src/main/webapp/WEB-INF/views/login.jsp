<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 로그인</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
	* { /* font-family: 'Jeju Myeongjo', serif;  */ font-family: 'S-CoreDream-4Regular'; font-weight: bold; }
	body {
		background-color:	rgb(250,250,250);
	}
	#logo {
		/* margin-top: 50px;
		width: 200px; height: 60px;
		margin: 70px auto; */
		text-align: center;
		margin-top: 100px;
		font-size: 30px;
	}
	#login_form {
		text-align: center;
		margin-top: 100px;
	}
	input[type=text],input[type=password] {
		width: 300px;
		padding: 12px;
	}
	input[type=submit], input[type=button] {
		width: 325px;
		padding: 13px;
		background-color: rgba(255,198,165,0.5);
		border: 1px solid #FFBC9B;
	}
	#find_id {
		font-size: 12px;
		margin: 50px 0px;
		color: black;
		text-align: center;
	}
	a{ text-decoration: none; color: #6e6e6e; }
	#find_id>a:hover { color: #FFBC9B; }
	#find_id>a:visited {  color: #6e6e6e; }
</style>
<script type="text/javascript">
	function login_go(f) {
		if (f.id.value == "" || f.pw.value == "") {
			alert("아이디 혹은 비밀번호를 입력하세요.");
			f.id.value = "";
			f.pw.value = "";
			f.id.focus();
			return;
		}
		f.action = "login_ok.do";
		f.submit();
	}
	function join_go(f) {
		f.action = "join.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div id="logo">
		<!-- <a href="main.jsp"><img alt="로고맨맨맨맨" src="../images/logo.png"></a> -->
		<h2><a href="main.jsp">가 꿈</a></h2>
	</div>
	
	<form id="login_form" method="post">
		<input type="text" name="id" placeholder="아이디를 입력해주세요."><br><br>
		<input type="password" name="pw" placeholder="비밀번호를 입력해주세요."><br><br><br>
		<input type="button" onclick="login_go(this.form)" value="로그인" ><br><br>
		<input type="button" onclick="join_go(this.form)" value="회원가입" >
	</form>
		<div id="find_id">
			<a href="find_id.do">아이디 혹은 비밀번호를 잊어버리셨나요?</a>
		</div>

</body>
</html>