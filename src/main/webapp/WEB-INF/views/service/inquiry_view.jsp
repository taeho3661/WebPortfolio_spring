<jsp:include page="../main/header.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 

 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>상품리뷰</title>
</head>

<style>
  .review_wrap {
    padding: 10px;
    width: 630px;
    height: 400px;
    margin:  110px auto;
    border: 1px solid rgb(66, 62, 63);
    display: flex;
    flex-flow: column nowrap;
    background-color: rgb(240, 233, 233);
  }
  .review_table {
    width: 600px;
    
  }
  .board_name {
   	width: 500px;
    height: 40px;
    background-color:#ee9da2;
   	overflow: hidden;
  }
  .boardName {
    width: 350px;
  }
  .in_content {   
    height: 80px;}
    
  .content {
  	 height: 60px;
     vertical-align: top;
  }
  .writer {
    width: 50px;
  }
  .reply {
	height: 40px;
    color : blue;
	 
  }
</style>


<body>
  <div class="review_wrap">

<table class="review_table" >
  <tr class="board_name">
    <td class="boardName">제목 : ${dto.board_name}</td>
    <td class="writer">${dto.board_writer}</td>
  </tr>
  
  <tr class="in_content">
    <td>내용<hr></td>
    <td><fmt:formatDate value="${dto.board_write_date}" pattern="yyyy/MM/dd" /><hr></td>
  </tr> 
  
  <tr class="content">
   <td>${dto.board_content}</td>
   </tr>
   
  <tr class="reply"> 
   <c:if test="${not empty dto.board_reply }">
   	<td ><hr> : ${dto.board_reply}
   	</td>
	</c:if>
  </tr>
</table>
  
  

 </div>

  
</body>
</html>

<jsp:include page="../main/footer.jsp" />