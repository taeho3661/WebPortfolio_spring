<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  text-decoration: none;
  text-align: center;
}
.inquiry_title {
  margin-top: 50px;
}
.inquiry_table {
  width:700px;
  border: 2px solid rgb(199, 180, 180);
  margin: 50px auto;
  padding: 5px;
}
.inquiry_name {
  width: 400px;
}
.inquiry_table  th {
  border-bottom: 0.5px solid rgb(163, 163, 169);
  color: rgb(83, 69, 69);
}
.inquiry_table td {
  color: rgb(128, 122, 115);
}
</style>

</head>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />


  <h2 class="inquiry_title">1:1 문의</h2>

  <table class="inquiry_table">
    <!-- th -->
    <tr>
      <th>No</th>
      <th class="inquiry_name">Name</th>
      <th>Writer</th>
      <th>Date</th>
      <th>Hit</th>
    </tr>
    <!-- tr -->
    <form method="POST" name="answer">
      
      <c:forEach var="dto" items="${list}" >

        <input type="hidden" name="item_no" value="${dto.item_no}">

        <tr>
          <td>${dto.item_no}</td>
          <td>${dto.board_title}</td>
          <td>${dto.board_writer}</td>
          <td><fmt:formatDate value="${dto.board_date}" pattern="yyyy/MM/dd" /> </td>
          <td>${dto.board_count}</td>
        </tr>
         
       </c:forEach>
    </form>
  </table>
  
<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />

</body>
</html>