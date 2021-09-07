<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가꿈: 네일보기</title>
<style type="text/css">
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
*{ font-family: 'S-CoreDream-4Regular'; }
body { background-color: rgb(248, 236, 231); }
.res_notice {
	width: 1200px;
	height: 1200px;
	margin: 60px auto;
/* 	border: 2px solid #FFF; */
	text-align: center;
}
.tab {
	margin: 0;
	padding: 0;
	overflow: hidden;
}
.tab li {
	float: left;
	width: 33.3333333%;
}
.tab li a {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 20px;
	font-weight: bold;
}
.tab-content {
	display: none;
	height: 1000px;
	background-color: #FFF;
	padding: 10px 12px;
	color: #000;
}
ul.tab li.current {
	background-color: #FFF;
	color: #222;
}
.tab-content.current { display: inherit; }

table{
/* 	width: 1200px; */	
	margin: 0px auto;
	border-collapse: collapse;
}
table, th, td {border: 1px solid rgb(248,236,231); padding: 5px;}

</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	function goUpload() {
		location.href="upload.do";
	}
</script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="res_notice">

		<ul class="tab">
 			<li><a href="service.do?category=nail">손</a></li>
			<li><a href="service.do?category=pedi">발</a></li>
			<li><a href="service.do?category=eyelashes">속눈썹</a></li>
		</ul>


		<div class="tab-content current">
			<table class="service">
				<tbody>
					<c:choose>
						<c:when test="${empty list}">
							<tr> <td colspan="4">아직 사진이 준비되지 않았습니다.^^;</td> </tr>
						</c:when>
						<c:otherwise>
							<c:set var="i" value="0" /> 
							<c:set var="j" value="4" /> 
							<c:forEach var="k" items="${list}">
								<c:if test="${i%j == 0 }">
									<tr>
								</c:if>
								<td><img src="resources/service_images/${k.file_name}" style="width: 280px; height: 280px"></td>	
								<c:if test="${i%j == j }">
									</tr>
								</c:if>
								<c:set var="i" value="${i+1 }" /> 
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	
		<div>
			<c:choose>
				<c:when test="${admin == 'ok' }">
					<input type="button" id="upload" value="게시물 올리기" onclick="goUpload()">
				</c:when>
			</c:choose>
		</div>
	</div> <!-- res_notice end -->
</body>
</html>