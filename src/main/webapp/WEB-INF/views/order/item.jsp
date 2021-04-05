<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>상품페이지</title>
</head>
<style>  
  *{
    padding: 0;
    margin: 0 auto;
    /* border:1px solid red; */
  }
  input[type="button"], button{
    cursor:pointer;
  }
  .wrap{
    width: 1280px;
    /* margin-top: 50px; */
    /* height: 200px; */
  }
  .item_info{
    /* height: 100px; */
    display: flex;
    /* justify-items: stretch; */
  }
  .section1{
    height: 400px;
    width: 50%;
    text-align: center;
  }
  .section1 > img{
    height: 400px;
  }
  .section2{
    width: 40%;
    
  }
  #basketButton{
    clear:both; float:right;  margin: 10px;
  }
  #orderButton{
    clear:both; float:right; margin: 10px;
  }
  #basketButton input[type="button"], #orderButton input[type="button"]{
    width: 200px; height: 50px;
    border: 0px;
    background-color: rgb(253, 173, 233);
    color:white;
  }
  .section3{
    padding-top: 30px;
    /* height: 1000px; */
    text-align: center;
  }
  /* .section3 > img{ */
    /* height: 90%; */
    /* width: 1080px; */
  /* } */
  .section4, .section5{
    /* border:5px solid brown; */
    height: 300px;
    padding-top: 30px;
    text-align: center;
  }

  .buttonArea{
    width: 200px;
    /* height: 100px; */
    /* background-color: mediumaquamarine; */
    display: flex;
    margin-left: 80%;
    margin-bottom: 5px;
  }
  .buttonArea input[type="button"]{
    width: 80px; height: 24px;
    /* margin: 5px; */
    border: 1px solid lightgray;
    background-color: white;
    color:rgb(110, 110, 110);
  }
  .tableArea{
    /* background-color: red; */
    width: 90%;
    padding: 20px 0;
    border-top: 1px solid lightslategray;
    border-bottom: 1px solid lightgray;
  }
  .table{
    border-collapse: collapse;
  }
</style>
<body>
  <div class="wrap">
    <div class="item_info">
      <div class="section1">
        <img src="https://ifh.cc/g/SkXbo6.jpg" alt="">
      </div>
      <div class="section2">
        <div style="padding-bottom: 20px; font-size: 30px;">[상품명]</div>
        <div style="padding-top: 20px; padding-bottom: 5px; border-bottom: 1px solid rgb(133, 133, 133);">
          <h4 style="display: inline; font-weight: lighter;">판매가</h4>
          <h4 style="display: inline; float: right; font-weight: lighter;">50,000원</h4>
        </div>
        <div id="basketButton" onclick="alert('장바구니로 이동합니다.')"><a href="./basket"><input type="button" value="장바구니"/></a></div>
        <div id="orderButton" onclick="alert('구매 페이지로 이동합니다.')"><a href="./order"><input type="button" value="구매하기"/></a></div>        
        <div style="clear:both; padding-top: 30px; padding-bottom: 5px; margin-bottom: 20px; 
        border-bottom: 1px solid rgb(133, 133, 133);">[구매자명]님은 [일반회원]이십니다.</div>
      </div>
    </div>
    <div class="section3">
      <img src="https://ifh.cc/g/xt20xS.jpg" alt="">
    </div>
    <div class="section4">
      <h4>리뷰</h4>
      <div class="buttonArea">
        <div onclick="alert('리뷰페이지로 이동합니다.')"><a href="#"><input type="button" value="모두보기"/></a></div>
        <div onclick="alert('리뷰 작성 페이지로 이동합니다.')"><a href="#"><input type="button" value="후기쓰기"/></a></div> 
      </div>
      <div class="tableArea">
        <table class="table">
          <!-- th -->
          <tr>
            <th>칼럼1</th>
            <th>칼럼2</th>
            <th>칼럼3</th>
            <th>칼럼4</th>
          </tr>
          <!-- tr -->
          <c:forEach var="dto" items="${ list }">
              <tr>
                <td>${ dto.review1 }</td>
                <td>${ dto.review2 }</td>
                <td>${ dto.review3 }</td>
                <td>${ dto.review4 }</td>
              </tr>            
          </c:forEach>     
        </table>
      </div>
    </div>
    <div class="section5">
      <h4>상품문의</h4>
      <div class="buttonArea">
        <div onclick="alert('문의페이지로 이동합니다.')"><a href="#"><input type="button" value="모두보기"/></a></div>
        <div onclick="alert('문의 작성 페이지로 이동합니다.')"><a href="#"><input type="button" value="문의하기"/></a></div> 
      </div>
      <div class="tableArea">
        <table class="table">
          <!-- th -->
          <tr>
            <th>칼럼1</th>
            <th>칼럼2</th>
            <th>칼럼3</th>
            <th>칼럼4</th>
          </tr>
          <!-- tr -->
          <c:forEach var="dto" items="${ list }">
              <tr>
                <td>${ dto.qna1 }</td>
                <td>${ dto.qna2 }</td>
                <td>${ dto.qna3 }</td>
                <td>${ dto.qna4 }</td>
              </tr>            
          </c:forEach>     
        </table>
      </div>
    </div>

  </div>
</body>
</html>