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
* { font-family: 'S-CoreDream-4Regular'; }
body { background-color: rgb(248, 236, 231); }
.upload {
	width: 1200px;
	height: 800px;
	margin: 60px auto;
 	border: 2px solid #FFF;
	text-align: center;
}
table{
	width:1000px;	
	margin: auto;
	border-collapse: collapse;
}
table, th, td {border: 1px solid black; padding: 10px; }
input{padding: 8px;}
.bg{
	background-color: #dedede;
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
 function image_upload(f) {
	f.action="upload_ok.do";
	f.submit();
}
</script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="upload">
		<h2>서비스 사진 업로드</h2>
		<form method="post" enctype="multipart/form-data" >
			<table>
				<tbody>
					<tr>
						<th class="bg">분류</th>
							<td>
								<input type="radio" name="category" value="nail" checked>네일
								<input type="radio" name="category" value="pedi">패디
								<input type="radio" name="category" value="eyelashes">속눈썹
							</td>
					</tr>
					<tr>
						<th class="bg">이미지</th>
						<td>
							<input type="file" name="f_image" required>				
						</td>
					</tr>
					<tr>
						<th colspan="2" class="bg">상세정보</th>
					</tr>
					<tr>
						<td colspan="2" align="left"><script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
						<textarea rows="20" cols="80" name="content"></textarea>
						<script type="text/javascript">CKEDITOR.replace('content');</script>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="이미지 올리기" onclick="image_upload(this.form)">
							<input type="reset" value="취소">	
						</td>
					</tr>
				</tfoot>
			</table>
		</form>

	</div> <!-- res_notice end -->

</body>
</html>