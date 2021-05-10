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
    padding: 20px;
    width: 630px;
    height: 500px;
    margin:  110px auto;
    border: 1px solid rgb(66, 62, 63);
    display: flex;
    flex-flow: column nowrap;
    background-color: rgb(240, 233, 233);
  }
  .review_table {
  	
    width: 600px; 
     height: 450px;
  }
  .board_name {
    height: 80px;
  }
  .board_content {
    height: 200px;
  }
  .Binput {
   width : 90px;
   height: 35px;
   margin: 7px;
   border: 1px solid rgb(169, 162, 162);
   background-color: white;
   border-radius: 5px;
  }
  .Binput:hover {
  	background-color:  rgb(243, 192, 192);
  	color:white;
  }
 
</style>


<body>
  <div class="review_wrap">

<form action="reviewAdd" name="form3" method="POST"> 
<input type="hidden" name="item_name" value="${ list.item_name }">
<input type="hidden" name="item_no" value="${ list.item_no }">
<input type="hidden" name="board_writer" value="${user.user_name}">
<table class="review_table" >

  <tr class="board_name">
  
 	 <td>주문날짜 </td>
   	<td class="item_name" ><fmt:formatDate value="${list.order_date}" pattern="yyyy/MM/dd" /></td>
  </tr>
  
   <tr>
   
  	 <td class="order_date" ><img src="/img/${ list.item_img }" style="width: 70px; height: 70px; line-height: 70px;"></td>
     <td>${list.item_name}</td>
   
  </tr>
  
   <tr class="review_name">
    <td>제목<hr></td>
    <td><textarea  name="review_name" cols="50" rows="1"></textarea></td>
  </tr> 


  <tr >
    <td>내용<hr></td>
    <td><textarea class="board_content" name="review_content" cols="50" rows="10"></textarea></td>
  </tr> 
   
  
     <tr >
      <td  colspan="3" align="center">
          <input class="Binput" type="submit" value="등록" 
               >
          <input class="Binput" type="button" value="취소"
    onclick="javascript:history.back()">
      </td>
    </tr>
  </table>
</form>  
  

 </div>

  
</body>
</html>

<jsp:include page="../main/footer.jsp" />