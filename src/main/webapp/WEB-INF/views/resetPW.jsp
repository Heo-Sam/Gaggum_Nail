<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 비밀번호 재설정</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
	* { font-family: 'S-CoreDream-4Regular'; font-weight: bold; }
	body {
		background-color:	rgb(250,250,250);
	}
	#login_form {
		text-align: center;
		margin-top: 100px;
	}
	input {
		width: 300px;
		padding: 12px;
	}
	input[type=submit], input[type=button] {
		width: 325px;
		padding: 13px;
		background-color: rgba(255,198,165,0.5);
		border: 1px solid #FFBC9B;
	}
	#resetPW_form {
		font-size: 12px;
		margin: 50px 0px;
		color: black;
		text-align: center;
	}
</style>
<script type="text/javascript">
	/* 비밀번호 변경확인
	function resetPwConfirm_go(f) {
			alert("변경되었습니다. 변경된 비밀번호로 재로그인 해주세요.");
		if (condition) {
		 변경 완료  
		} else {
			 변경 실패 
			alert("변경 실패");
		}
	}
	*/
		f.action="login.jsp";
		f.submit();
</script>
</head>
<body>
	<form id="resetPW_form" method="post">
		<h3>비밀번호 재설정</h3>
		<input type="password" name="pw" placeholder="새로운 비밀번호를 입력해주세요." required><br><br>
		<input type="password" name="pw_conf" placeholder="확인을 위해 한번 더 입력해주세요." required><br><br><br>
		<input type="button" onclick="resetPwConfirm_go(this.form)" value="비밀번호 저장" ><br><br>
		<br><br><br>
	</form>
</body>
</html>