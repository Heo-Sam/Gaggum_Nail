<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>@관리자페이지</title>
<style type="text/css">
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
*{ font-family: 'S-CoreDream-4Regular'; }
body { background-color: rgb(248, 236, 231); }
.admin_page {
	width: 1200px;
/* 	height: 1000px; */
	margin: 40px auto;
	text-align: center;
}
.tab {
	margin: 0;
	padding: 0;
	overflow: hidden;
}
.tab li {
	
	float: left;
	width: 50%;
}
.tab li a {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	font-weight: bold;
}
.tab-content  {
	display: none;
/* 	height: 1000px; */
	padding: 10px 10px;
	color: #000;
}
ul.tab li.current {
	background-color: rgb(250,250,250);
	color: #222;
}
.tab-content.current { display: block; }
.member-list { width: 1100px; margin: 0px auto; }
.member-list, .member-list>thead>tr>th, .member-list>tbody>tr>td, #member_Del { border-collapse: collapse; border: 1px solid #c8c8c8; height: 30px; }
.member-list>tbody>tr>td { font-size: 14px;}
th {background-color: #828282; color: #FFF; font-weight: normal; font-size: 15px;}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<!-- fullcalender -->
<link href='/resources/css/main.css' rel='stylesheet' />
<script src='/resources/js/main.js'></script>
<script>
      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		function memberList() {
			$("#tbody").empty(); // 리스트 초기화
			$.ajax({
				url: "memberList.do",
				method: "post",
				dataType: "json",
				success: function(data) {
					var tbody = "";
					$.each(data, function() {
						tbody += "<tr>";
						tbody += "<td>" + this["m_idx"] + "</td>";
						tbody += "<td>" + this["name"] + "</td>";
						tbody += "<td>" + this["id"] + "</td>";
						tbody += "<td>" + this["phone"] + "</td>";
						tbody += "<td>" + this["email"] + "</td>";
						tbody += "<td>" + this["membership"] + "</td>";
						tbody += "<td>" + this["regdate"].substring(0,10) + "</td>";
						
						/* 삭제 시 필요한 정보(id, m_idx) */
						tbody += "<td><input type='button' value='DEL' class='delMember' id='" 
							+ this["id"] + "' m_idx='" + this["m_idx"] + "'></td>";
						tbody += "</tr>";
					});
					$("#tbody").append(tbody);
					
				},
				error: function() {
					alert("읽기 실패");
				}
			});
		}
		
		// 멤버삭제
		$("table").on("click", ".delMember", function() {
			$.ajax({
				url: "deleteMember.do",
				method: "post",
				data: "id="+$(this).attr("id")+"&m_idx="+$(this).attr("m_idx"),
				dataType: "text",
				success: function(data) {
					if (data == '1') {
						memberList();
					}
				},
				error: function() {
					alert("읽기 실패");
				}
			});
		});
			memberList();
	});
</script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="admin_page">

		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">예약일정 관리</a></li>
			<li data-tab="tab2"><a href="#">회원 리스트</a></li>
		</ul>

		<div id="tab1" class="tab-content current"> 
			<div id='calendar'></div>
	 	</div> 

		<div id="tab2" class="tab-content">
			<table class="member-list">
				<thead>
					<tr>
						<th style="width: 7%">회원번호</th>
						<th style="width: 9%">회원이름</th>
						<th style="width: 12%">회원ID</th>
						<th style="width: 18%">회원연락처</th>
						<th style="width: 19%">회원E-mail</th>
						<th style="width: 15%">멤버십(남은금액)</th>
						<th style="width: 15%">가입일자</th>
						<th style="width: 5%"> 삭제  </th>
					</tr>
				</thead>
				<tbody id="tbody"> </tbody>
			</table>
		</div>

	</div> <!-- res_notice end -->

	<script>
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tab-content').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			});
		});
	</script>

</body>
</html>