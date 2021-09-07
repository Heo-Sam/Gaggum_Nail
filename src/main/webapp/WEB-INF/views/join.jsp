<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 회원가입</title>
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
		margin-top: 50px;
		font-size: 30px;
	}
	#join_form {
		display: inline-block;
		text-align: left;
	}
	#join {
		margin-top: 80px;
		text-align: center;
	}
	input[type=text],input[type=password],
	input[type=number] {
		width: 300px;
		padding: 12px;
	}
	input[type=button] {
		width: 325px;
		padding: 13px;
		background-color: rgba(255,198,165,0.5);
		border: 1px solid #FFBC9B;
	}
	span { color: red; }
	a { font-size: 14px; }
</style>
<script type="text/javascript">
function validate(f) {
	var pw = document.getElementById("pw");
	var pw_check = document.getElementById("pw_check");
	
	// 유효성 검사
	for (var i = 0; i < f.elements.length; i++) {
		if (f.elements[i].values == "") {
			alert(f.elements[i].name + "을(를) 입력해주세요!");
			f.elements[i].focus();
			return;
		}
	}
	
	if (f.name.pw != f.name.pw_check) {
		alert("비밀번호가 일치하지 않습니다.\n다시 입력해주세요!");
	}
	
	f.action="join_ok.do";
	f.submit();
}
</script>
</head>
<body>
	<div id="logo">
		<!-- <a href="main.jsp"><img alt="로고맨맨맨맨" src="../images/logo.png"></a> -->
		<a href="main.jsp"><h2>가 꿈</h2></a>
		<h2>WELCOME</h2>
	</div>
	<div id="join">
		<form id="join_form" method="post">
			<span>*</span> <a> 1. 이름을 입력해주세요. </a> <br><br>
			<input type="text" name="name" placeholder="이름 입력" required><br><br>
			<span>*</span> <a> 2. 사용 할 아이디를 입력해주세요.</a> <br><br>
			<input type="text" name="id" placeholder="아이디 입력" required><br><br>
			<span>*</span> <a> 3. 사용 할 비밀번호를 입력해주세요.</a> <br><br>
			<input type="password" name="pw" placeholder="비밀번호 입력" required><br><br>
			<span>*</span> <a> 4. 비밀번호 확인을 위해 한번 더 입력해주세요.</a> <br><br>
			<input type="password" name="pw_check" placeholder="비밀번호 재입력" required><br><br>
			<span>*</span> <a> 5. 전화번호를 입력해주세요.</a> <br><br>
			<input type="text" name="phone" placeholder="010-1111-1111" required><br><br>
			<span>*</span> <a> 6. 이메일을 입력해주세요.</a> <br><br>
			<input type="text" name="email" placeholder="ex)aaa@naver.com" required><br><br>
			
			<input type="button" onclick="join_go(this.form)" value="가입하기" >
		</form>
	</div>
</body>
</html>