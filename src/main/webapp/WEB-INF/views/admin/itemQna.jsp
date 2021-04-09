<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>문의목록</title>
</head>
<style>
* {
	margin: 0 auto;
	padding: 0;
	box-sizing: border-box;
	/* overflow: hidden; */
	/* 디버깅용 라인 */
	/* border: 1px solid red; */
}

a {
	text-decoration: none;
}

.wrap {
	width: 1280px;
	display: flex;
}

.aside {
	width: 180px;
	/* background-color: cyan; */
	font-size: 20px;
	text-align: center;
	display: flex;
	flex-direction: column;
}

.aside a {
	border: .5px solid gray;
	width: 180px;
	height: 50px;
	line-height: 50px;
	color: lightslategrey;
}

.aside a:hover {
	background-color: #CE6D39;
	color: lavender;
}

#selected {
	/* filter: brightness(20%); */
	background-color: #CE6D39;
	color: lavender;
}

.section {
	margin-top: 20px;
	width: 1100px;
	background-color: lavender;
	height: 800px;
}

.sectionTitle {
	background-color: lavenderblush;
	height: 80px;
	border: 1px solid gray;
	/* 글자 정렬 */
	text-align: center;
	line-height: 80px;
}

.sectionTitle>h1 {
	color: lightsalmon;
}

.table {
	margin-top: 30px;
}

.table th, .table td {
	width: 180px;
	height: 30px;
	text-align: center;
}

#productQnaReplyButton {
	width: 80px;
	height: 30px;
	border: 1px solid skyblue;
	color: skyblue;
	padding: 5px;
	margin-right: 20px;
	border-radius: 10px;
}

#productQnaReplyButton:hover {
	color: white;
	background-color: skyblue;
}
</style>
<body>

	<jsp:include page="adminHeader.jsp" />

	<div class="wrap">
		<div class="aside">
			<a href="memberList">회원 목록</a> <a href="itemList">상품 목록</a> <a
				href="itemAddForm">상품 등록</a> <a href="orderList">주문 목록</a> <a
				href="itemQna" id="selected">문의 목록</a>
		</div>
		<div class="section">
			<div class="sectionTitle">
				<h1>문의 목록</h1>
			</div>
			<table class="table">
				<!-- th -->
				<tr>
					<th>상품명</th>
					<th>문의제목</th>
					<th>문의자</th>
					<th>날짜</th>
					<th></th>
				</tr>
				<!-- tr -->
				<form method="post" name="answer">
					<c:forEach var="dto" items="${ list }">
						<input type="hidden" name="board_no" value="${dto.board_no}" />
						<tr>
							<td>${ dto.item_no }</td>
							<td>${ dto.board_name }</td>
							<td>${ dto.board_writer }</td>
							<td><fmt:formatDate value="${dto.board_write_date}" pattern="yyyy/MM/dd" /></td>
							<td><a href="javascript:replyButton();"><input type="button" value="답변" id="productQnaReplyButton"></a></td>
						</tr>
					</c:forEach>
				</form>
			</table>
		</div>
	</div>
</body>
</html>

<script>
	function replyButton()
	{
		window.open("", "새창", "width=780, height=850, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );
		var form = document.getElementById("answer");
		form.action = qnaReply;
	}
</script>