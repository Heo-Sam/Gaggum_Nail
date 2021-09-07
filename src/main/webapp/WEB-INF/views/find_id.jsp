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
	#hr {
		width: 1200px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
	}
	#logo {
		/* margin-top: 50px;
		width: 200px; height: 60px;
		margin: 70px auto; */
		text-align: center;
		margin-top: 0px;
		font-size: 30px;
	}
	#findID_form {
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
	#findID_form, #findPW_form {
		font-size: 12px;
		margin: 50px 0px;
		color: black;
		text-align: center;
	}
 	#id_confirm {
	/*	display: none;
	 	visibility: visible; */
	} 
</style>
<script type="text/javascript">
	function findID_go(f) {
		f.document.getElementById("#id_btn").style.display = "block";
	}
	function resetPW_go(f) {
		f.action = "resetPW.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div id="logo">
		<!-- <a href="main.jsp"><img alt="로고맨맨맨맨" src="../images/logo.png"></a> -->
		<h2><a href="main.jsp">가 꿈</a></h2>
	</div>
	
	<form id="findID_form" method="post">
		<h3>아이디 찾기</h3>
		<input type="text" name="id" placeholder="이름을 입력해주세요." required><br><br>
		<input type="number" name="phone" pattern="###-####-####"  placeholder="010-1111-1111" required><br><br><br>
		<input type="button" onclick="findID_go(this.form)" value="아이디 찾기" ><br><br>
		<br><br><br>
		<!-- 버튼 누르면 id 나오게끔 -->
		<div id="id_confirm">
			<h3>회원님의 아이디는 _______ 입니다</h3>
		</div>
	</form>
	<hr id="hr">
	<form id="findPW_form" action="resetPW.jsp" method="post">
		<h3>비밀번호 찾기</h3>
		<input type="text" name="id" placeholder="아이디를 입력해주세요." required><br><br>
		<input type="text" name="name" placeholder="이름 입력해주세요." required><br><br>
		<input type="number" name="phone" pattern="###-####-####"  placeholder="010-1111-1111" required><br><br><br>
		<input type="button" name="resetPW_go(this.form)" value="비밀번호 찾기" required><br><br>
	</form>

</body>
</html>