<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>상품목록</title>
</head>
<style>
  *{
    margin: 0 auto;
    padding: 0;

    box-sizing: border-box;
    /* overflow: hidden; */
    /* 디버깅용 라인 */
    /* border: 1px solid red; */ 
  }
  a{
    text-decoration: none;
  }
  .wrap{
    width: 1280px;
    display: flex;
  }
  .aside{
    width: 180px;
    /* background-color: cyan; */
    font-size: 20px;
    text-align: center;

    display: flex;
    flex-direction: column;
    
  }
  .aside a{
    border: .5px solid gray;
    width: 180px;
    height: 50px;
    line-height: 50px;
    color:lightslategrey;
  }
  .aside a:hover{
    background-color: #CE6D39;
    color:lavender;
  }
  #selected{
    /* filter: brightness(20%); */
    background-color: #CE6D39;
    color:lavender;
  }
  .section{
    margin-top: 20px;
    width: 1100px;
    background-color: lavender;
    height: 800px;
  }
  .sectionTitle{
    background-color: lavenderblush;
    height: 80px;
    border: 1px solid gray;

    /* 글자 정렬 */
    text-align: center;
    line-height: 80px;
  }
  .sectionTitle > h1{
    color: lightsalmon;
  }
  .table{
    margin-top: 30px;
  }
  .table th, .table td{
    width: 160px;
    text-align: center;
  }
  .table img{
    width: 80px;
  }
  #btn1{ 
    border-radius: 5px;
  } 
  #btn2{ 
    border-radius: 5px;
  }
  #buttons button{
    border: 1px solid skyblue;
    color: skyblue; 
    padding: 5px;
    margin: 2px;
    width: 50px;
  }
  #buttons button:hover{
    color:white; 
    background-color: skyblue;
  }

</style>
<body>

<jsp:include page="adminHeader.jsp"/>

  <div class="wrap">
    <div class="aside">
      <a href="memberList">회원 목록</a>
      <a href="itemList" id="selected">상품 목록</a>
      <a href="itemAddForm">상품 등록</a>
      <a href="orderList">주문 목록</a>
      <a href="itemQna">문의 목록</a>
    </div>
    <div class="section">
      <div class="sectionTitle">
        <h1>상품 목록</h1>
      </div>
      <table class="table">
        <!-- th -->
        <tr>
          <th></th>
          <th>상품이름</th>
          <th>가격</th>
          <th>판매량</th>
          <th>재고</th>
          <th></th>
        </tr>
        <!-- tr -->
        <c:forEach var="dto" items="${ list }">
            <tr>
              <td><img alt="" src="${ dto.item_img }"></td>
              <td>${ dto.item_nm }</td>
              <td>${ dto.price }</td>
              <td>판매량</td>
              <td>${ dto.stock }</td>
              <td id="buttons" style="display: flex; flex-direction: column; align-items: center; justify-content: center; height: 100px;">
                <button id="btn1">변경</button>
                <button id="btn2">삭제</button>
              </td>
            </tr>
        </c:forEach>
		
      </table>
    </div>
  </div>
</body>
</html>