<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품수정</title>

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
	text-decoration: none;
}

#selected {
	/* filter: brightness(20%); */
	background-color: #CE6D39;
	color: lavender;
}

.section {
	margin-top: 20px;
	width: 1100px;
	height: 800px;
}

.sectionTitle {
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

.table td:nth-child(2n-1) {
	width: 160px;
	height: 50px;
	text-align: center;
	font-size: 20px;
}

.table td:nth-child(2n) {
	padding-left: 10px;
	width: 500px;
	text-align: left;
}

.table td:nth-last-child() {
	text-align: right;
}

.inputBox {
	width: 400px;
	height: 40px;
	padding-left: 10px;
}

#productAddSubmitButton {
	width: 80px;
	height: 30px;
	border: 1px solid lightsalmon;
	color: lightsalmon;
	background-color: white;
	padding: 5px;
	margin-right: 20px;
	border-radius: 10px;
}

#productAddSubmitButton:hover {
	color: white;
	background-color: lightsalmon;
}
.itemAdd_kategorie
{
	height: 40px;
	font-size: 15px;
	padding-left: 5px;
}
</style>
<body>

	<jsp:include page="adminHeader.jsp" />

	<div class="wrap">
		<div class="aside">
			<a href="memberList">회원 목록</a> <a href="itemList">상품 목록</a> <a
				href="itemAddForm" id="selected">상품 등록</a> <a href="orderList">주문
				목록</a> <a href="itemQna">문의 목록</a>
		</div>
		<div class="section">
			<div class="sectionTitle">
				<h1>상품 등록</h1>
			</div>
			<form action="itemModifyAction" method="post" enctype="multipart/form-data">
				<table class="table">
					<tr>
						<td>
							상품번호
						</td>
						<td>
							<input type="text" name="item_no" value="${dto.item_no }" class="inputBox" style="width: 40px;" readonly>
						</td>
					</tr>
					<tr>
						<td>카테고리</td>
						<td>
							<select name="item_type" class="itemAdd_kategorie">
							  <option value="crepe">crepe</option>
							  <option value="muffin">muffin</option>
							  <option value="bagel">bagel</option>
							  <option value="cake">cake</option>
							  <option value="tea">tea</option>
							  <option value="cheong">cheong</option>
							  <option value="coffee">coffee</option>
							  <option value="smoothie">smoothie</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>상품명</td>
						<td><input type="text" name="item_name" value="${dto.item_name }"
							placeholder="상품명을 입력해주세요." class="inputBox"></td>
					</tr>
					<tr>
						<td>판매가</td>
						<td><input type="text" name="item_price" value="${dto.item_price }"
							placeholder="상품 가격을 입력해주세요." class="inputBox"></td>
					</tr>
					<tr>
						<td>재고</td>
						<td><input type="text" name="item_stock" value= "${dto.item_stock }"
							placeholder="상품 갯수를 입력해주세요." class="inputBox"></td>
					</tr>
					<tr>
						<td>상품 이미지</td>
						<td>
							<input type="file" name="item_img" value="파일 선택">
						</td>
					</tr>
					<tr>
						<td>상품 설명</td>
						<td>
							<input type="file" name="item_info_img" value="파일 선택">
						</td>
					</tr>
					<tr>
						<td></td>
						<td style="text-align: right;"><input type="submit"
							value="제품등록" id="productAddSubmitButton"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>