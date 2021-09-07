<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 예약</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}	
	* { font-family: 'Jeju Myeongjo', serif; }
	body { background-color:	rgb(248,236,231); }
	.res_notice {
		width: 1200px; height: 300px;
		margin: 40px auto;
	 	border: 2px solid #FFF;
	}
	#res_subject, #online_subject { font-size: 2em; font-weight: bold; }
	#content {
		width: 950px; height: 180px;
		margin: 10px auto;
	 	border: 1px solid rgb(248,236,231);
	}
	#res_content { margin-left: 20px; }
	span { color: red; }
	.res_notice, #res_subject, #content, #res_content, span { font-family: 'S-CoreDream-4Regular'; }
	#res_hr {
		width: 1200px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
	}
	#res_online {
		width: 1200px; height: 700px;
		margin: 40px auto;
	/*  	border: 2px solid #FFF; */
	}
	#online_subject {
		margin: 60px 120px; font-style: italic;
	}
	#online {
		width: 1000px; height: 500px;
		margin: 0 auto;
	}
 	.online_content {
		width: 300px; height: 500px;
	/*  	border: 1px solid #bebebe; */
	 	border: 1px solid #aaaaaa;
	 	float: left;
	 	text-align: center;
	} 
	.reserve_go {
		text-align: center;
		font-size: 1.2em;
		font-weight: bold;
	}
	input[type=button] {
		width: 250px;
		padding: 13px;
		background-color: rgba(255,198,165,0.5); 
		border: 1px solid #FFBC9B;
		margin-top: 20px;
		font-size: 15px;
	/* 	font-weight: bold; */
	}
</style>
<script type="text/javascript">
	function web_reserve() {
		location.href="reserve_form.do";
	}
	function chat_reserve() {
		location.href="https://open.kakao.com/o/sDYUw4eb";
	}
</script>
</head>
<body>
<%@ include file="header.jsp" %>

	<div class="res_notice">
		<p id="res_subject" style="text-align: center;">예약 시 주의사항</p>
		
		<div id="content">
			<p id="res_content">
				1. 예약은 <span>웹 예약</span> 또는 <span>카카오톡 오픈채팅</span>으로 문의 부탁드립니다.<br>
				2. 웹으로 예약 시 질문에 맞춰 작성해주시고, 오픈채팅으로 연락하실 시 아래 항목에 맞춰 보내주시면 빠른 상담 및 예약 가능하세요!<br>
				&nbsp;&nbsp;&nbsp;&nbsp;(성함/연락처/날짜/시간/손.발.속눈썹/(손.발만 해당)젤제거유무/기본 or 아트)<br><br>
				3. 시술 중에는 답변이 느릴 수도 있으며, <span>순차적으로</span> 예약시간에 맞춰드리고 있습니다.<br>
				4. 대부분 적어주신 일정에 맞춰드리지만, 일정에 차질이 생길 시에는 따로 연락을 드려 변동될 수 있는 점 양해부탁드립니다.
			</p>
		</div>
	</div>
		<hr id="res_hr">
	<div id="res_online">
		<p id="online_subject">온라인 예약하기 /</p>	
		
		<div id="online">
			<div class="online_content">
				<form action="#" method="post">
					<p class="reserve_go">젤네일 예약하기</p>
					<img alt="네일이미지" src="resources/main_images/res_nail_300.jpg">
					<input type="button" value="웹에서 예약하기" onclick="web_reserve()">
					<input type="button" value="오픈채팅으로 예약하기" onclick="chat_reserve()">
				</form>
			</div>
			<div class="online_content" style="margin: 0 44px;">
				<form action="#" method="post">
					<p class="reserve_go">패디큐어 예약하기</p>
					<img alt="네일이미지" src="resources/main_images/res_pedi_300.jpg">
					<input type="button" value="웹에서 예약하기" onclick="web_reserve()">
					<input type="button" value="오픈채팅으로 예약하기" onclick="chat_reserve()">
				</form>
			</div>
			<div class="online_content">
				<form action="#" method="post">	
					<p class="reserve_go">속눈썹 예약하기</p>
					<img alt="네일이미지" src="resources/main_images/gaggum_logo2.png">
					<input type="button" value="웹에서 예약하기" onclick="web_reserve()"> 
					<input type="button" value="오픈채팅으로 예약하기" onclick="chat_reserve()">
				</form>
			</div>
		</div>
	</div>

</body>
</html>