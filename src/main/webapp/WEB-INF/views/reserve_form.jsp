<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 예약폼</title>
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
/* 		font-size: 30px; */
	}
	#join_form {
		display: inline-block;
		text-align: left;
	}
	#join {
		width: 526px;
		margin: 80px auto;
		text-align: left;
	}
	input[type=text], input[type=password], input[type=number] { width: 499px; padding: 11px; }
	input[type=date] { width: 150px; padding: 9px; }
	#date-text { width: 321px; padding: 11px; }
	input[type=button] {
		width: 526px; 
		padding: 13px;
		background-color: rgba(255,198,165,0.5);
		border: 1px solid #FFBC9B;
		margin: 0px auto;
	}
	span { color: red; }
	a { font-size: 14px; }
</style>
</head>
<body>
	<div id="logo">
		<!-- <a href="main.jsp"><img alt="로고맨맨맨맨" src="../images/logo.png"></a> -->
		<h2><a href="main.jsp">가 꿈</a></h2>
		<h2>예약을 위한 질문 폼</h2>
		<p>고객님이 적어주신 일정에 최대한 맞춰드리며, 예약하신 일정에 차질이 생길 경우 적어주신 연락처를 통해 따로 연락을 드리고 있습니다.</p>
	</div>
	<div id="join">
		<form id="reserve_form" method="post">
			<span>*</span> <a> 1. 이름을 입력해주세요. </a> <br><br>
			<input type="text" name="name" placeholder="이름 입력" required><br><br>
			
			<span>*</span> <a>2. 전화번호를 입력해주세요.</a> <br><br>
			<input type="number" name="phone" pattern="###-####-####"  placeholder="010-1111-1111" required><br><br>
			
			<span>*</span> <a>3. 원하는 날짜를 선택해주세요.</a> <br><br>
			<input type="date" name="date" required>
			<input id="date-text" type="text" name="date-time" placeholder="원하는 시간을 기재해주세요." required><br><br>
			
			<span>*</span> <a>4. 손 / 발 / 속눈썹 중 시술 받으실 항목을 적어주세요.</a> <br><br>
			<input type="text" name="item" placeholder="시술 받으실 항목을 적어주세요." required><br><br>
			
			<span>*</span> <a>5. (손/발 선택 시)젤 제거 유무</a> <br><br>
			<input type="radio" name="jelly">유 <input type="radio" name="jelly">무<br><br>
			
			<span>*</span> <a>6. 기본 / 아트 디자인 선택(디자인 선택에 따라 관리 소요시간이 다르므로 예약일정이 변경될 수 있습니다.)</a> <br><br>
			<input type="radio" name="design">기본 <input type="radio" name="design">아트<br><br><br>
			
			<input type="button" name="join_go(this.form)" value="예약하기" >
		</form>
	</div>
</body>
</html>