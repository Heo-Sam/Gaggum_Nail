<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 헤더</title>
<style type="text/css">	
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
*{ font-family: 'S-CoreDream-4Regular'; }
	body {
		background-color:	rgb(248,236,231);
	}
	#hr {
		width: 800px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
	}

	#menu1 {
		height: 60px; 
		font-weight: bold;
	}
	.main {
		width: 800px; height: 100%;
		margin: 0 auto;
	}
	.main>li {
		float: left;
		width: 25%;
		line-height: 60px;
		text-align: center;
		position: relative;	
	}
	.main>li a {
		display: block;
		color: #5a5a5a;
		text-decoration: none;
	}
	.main>li a:hover {
		color: black;
		font-weight: bold;
		background-color: rgba(255,255,255,0.5);
	}
	ul, li {
		list-style: none;
		margin: 0px; padding: 0px;
	}
	
	#login_go>a { text-decoration: none; color: #6e6e6e; }
	#login_go>a:visited { color: #6e6e6e; font-weight: bold; }
	#login_go>a:hover { color: #FFBC9B; font-weight: bold; }
	#login_go {
		display: block;
		width: 200px; height: 40px;
		line-height: 40px;
		text-align: center;
		margin-right: 50px;
		margin-top: 10px;
		float: right;
		font-size: 14px;
		font-weight: bold;
	}
	
	#icon {
		display: inline-block;
		left: 0px;
		margin: 30px;
		position: fixed;
	}
 
</style>
</head>
<body>
	<div id="header">
	  	<div id="login_go">
	  		<c:choose>
	  			<c:when test="${login == 'ok'}">
	  				${mvo.id}님! 환영합니다. <br> <a href="logout.do">로그아웃</a><br>
	  				<c:choose>
	  					<c:when test="${admin == 'ok' }">
	  						<a href="adminPage.do">관리자페이지</a>
	  					</c:when>
	  					<c:otherwise>
	  					</c:otherwise>
	  				</c:choose>
	  			</c:when>
	  			<c:otherwise>
					<a href="login.do">로그인</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;<a href="join.do">회원가입</a>	  			
	  			</c:otherwise>
	  		</c:choose>
	  	
	  	
		</div>
		<div id="menu1">
			<ul class="main">
				<li><a href="main.do">메인</a></li>
				<li><a href="intro.do">가꿈소개</a></li>
				<li><a href="service.do">가꿈서비스</a></li>
				<li><a href="reserve.do">예약문의</a></li>
			</ul>
		</div>
	<hr id="hr">
		<div id="icon">
			<a id="insta" href="https://instagram.com/_gaggum?utm_medium=copy_link"><img alt="" src="resources/icon_images/instagram_30.png" style="margin-bottom: 20px;"></a><br>
			<a id="kakao" href="https://open.kakao.com/o/sDYUw4eb"><img alt="" src="resources/icon_images/chat_30.png"></a>
		</div>
	</div>
</body>
</html>