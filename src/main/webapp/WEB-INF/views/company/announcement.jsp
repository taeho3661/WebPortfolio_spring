<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>문의리스트</title>
<style>
*{
  margin: 0;
  padding: 0;
  font-style: normal;
  text-align: center;
}
.reviewList_wrap {
 margin: 100px auto;
}
.inquiry_title {
  margin: 40px auto;
  	font-weight: bold;
	color: #4e4e4e;
	font-size: 40px;
  
}

.inquiry_table {
  width:700px;
  border: 2px solid rgb(199, 180, 180);
  margin: 20px auto;
  padding: 10px;
}
.inquiry_name {
  width: 400px;
}
.inquiry_table  th {
  border-bottom: 0.5px solid rgb(163, 163, 169);
  color: rgb(83, 69, 69);
  background-color: lightpink;
}
.inquiry_table td {
  color: rgb(128, 122, 115);
  padding: 6px;
  border-bottom: 0.5px solid  rgb(243, 238, 238);
}
.write_review {
    font-size: 15px;
    color:black;  
	text-decoration:none;	
	color: cornflowerblue;
	padding-left: 600px;
}
.write_review:hover {
	text-decoration: none;
	font-weight: bold;
}
	
.review_in {
	text-decoration: none;
	color: black;
}
.review_in:hover {
	text-decoration: none;
	color: lightcoral;
}

</style>

</head>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />
<div class="reviewList_wrap">
	
  <h2 class="inquiry_title">공지사항</h2>
  
	
	<div>
	
   <!--<a class="write_review" href="inquiry">글쓰기</a>-->
	</div>

  <table class="inquiry_table">
    <!-- th -->
    <tr>
      <th>No</th>
      <th class="inquiry_name">Name</th>
      <th>Writer</th>
      <th>Date</th>
      <!--<th>Hit</th>-->
    </tr>
    <!-- tr -->
      <c:forEach var="dto" items="${list}" >
        <tr>
          <td>${dto.board_no}</td>
          <td><a class="review_in" href="review_view?board_no=${dto.board_no }">${dto.board_name}</a></td>
          <td>${dto.board_writer}</td>
          <td><fmt:formatDate value="${dto.board_write_date}" pattern="yyyy/MM/dd" /> </td>
          <!--<td>${dto.board_hit}</td>-->
        </tr>
       </c:forEach>
  </table>
  </div>
<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />

</body>
</html>