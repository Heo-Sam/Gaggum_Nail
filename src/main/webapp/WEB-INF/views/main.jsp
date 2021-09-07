<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 메인</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
	* { font-family: 'Jeju Myeongjo', serif; }
	body {
		background-color:	rgb(248,236,231);
	}
	.main_block {
		width: 1200px; height: 800px;
		margin: 60px auto;
	/* 	border: 1px solid rgb(248,236,231); */
	}
	.slider{
		width: 1200px; 
		height: 800px;
		margin: 0 auto; 
		position: relative;
		overflow: hidden;  /* 현재 슬라이드 오른쪽에 위치한 나머지 슬라이드 들이 보이지 않도록 가림 */
	}
	.slider input[type=radio]{
	    display: none;
	}
	ul.imgs{
	    padding: 0;
	    margin: 0;
	    list-style: none;
	}
	ul.imgs li{
	    position: absolute;
	    left: 0;
	    transition-delay: 1s; /* 새 슬라이드가 이동해 오는 동안 이전 슬라이드 이미지가 배경이 보이도록 지연 */
	    padding: 0;
	    margin: 0 auto;
	}
	.bullets{
	    position: absolute;
	    left: 50%;
	    transform: translateX(-50%);
	    bottom: 20px;
	    z-index: 2;
	}
	.bullets label{
	    display: inline-block;
	    border-radius: 50%;
	    background-color: rgba(0,0,0,0.55);
	    width: 20px;
	    height: 20px;
	    cursor: pointer;
	}
	/* 현재 선택된 불릿 배경 흰색으로 구분 표시 */
	.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
	    background-color: #fff;
	}
	.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
	    background-color: #fff;
	}
	.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
	    background-color: #fff;
	}
	.slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
	    background-color: #fff;
	}
	
	.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
</style>

</head>
<body>
<%@ include file="header.jsp" %>

	<div class="main_block">
		<div class="slider">
			<input type="radio" name="slide" id="slide1" checked>
	   		<input type="radio" name="slide" id="slide2">
	    	<input type="radio" name="slide" id="slide3">
	    	<input type="radio" name="slide" id="slide4">
	    	<ul id="imgholder" class="imgs">
		        <li><img src="resources/main_images/main2.png"></li>
		        <li><img src="resources/main_images/main.png"></li>
		    </ul>
		    <div class="bullets">
		        <label for="slide1">&nbsp;</label>
		        <label for="slide2">&nbsp;</label>
		        <label for="slide3">&nbsp;</label>
		        <label for="slide4">&nbsp;</label>
		    </div>
	      </div>
	</div>
</body>
</html>