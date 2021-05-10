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
  <title>주문내역조회</title>
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
  .section{
      margin: 0 auto;
      width: 1280px;
  }
  .section1{
    width: 1280px;

    margin-top: 50px;
  }
  .section1_title{
    /* padding-bottom: 1px; */
    width: 1280px;
    height: 30px;

  }
  .section1_title > div:first-child{
    width: 15%;
    height: 30px;
    text-align: center;
    line-height: 30px;

    padding: 0 30px;
    float:left;

    border: 1px solid lightgray;
    border-bottom: none;
    /* background-color: red; */
  }
  .section1_title > div:last-child{
    float: left;
    height: 30px;
    width: 85%;
    /* background-color: blue; */
    border-bottom: 1px solid lightgray;
  }
  .section1_con{
    height: 120px;
    line-height: 80px;
    border-bottom:1px solid lightgray;
    padding: 20px;   

  }
  .section1_con button{
    width: 100px;
    height: 30px;
    line-height: 30px;
    
    background-color: darksalmon;
    color:cornsilk;
    border: none;
  }
  .section1_sub{
    color:lightgray;
    margin-bottom: 50px;
    font-size: 14px;
  }
  .section2{
    width: 1280px;
    /* height: 200px; */
    
    padding-bottom: 50px;
    border-top: 1px solid rgb(85, 85, 85);
    border-bottom: 1px solid rgb(85, 85, 85);
  }
  .section2_table{
    clear: both;
    width: 1280px;
    
    border-collapse: collapse;

    text-align: center;

    
  }
  .section2_table tr{
    height: 80px;
  }
  .section2_table th{
    color:rgb(185, 185, 185);
  }
  .section2_table th, .section2_table td{
    margin: 0;
    padding: 0;
    border-bottom: .5px solid lightgray;
  }
  
</style>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />

<div class="section">
  <div class="section1">
    <div class="section1_title">
      <div>주문내역조회</div>
      <div></div>
    </div>
    <div class="section1_con">
      <a href="orderHistory1d"><button>오늘</button></a>
      <a href="orderHistory7d"><button>7일</button></a>
      <a href="orderHistory1m"><button>1개월</button></a>
      <a href="orderHistory3m"><button>3개월</button></a>
      <a href="orderHistory6m"><button>6개월</button></a>
    </div>
    <div class="section1_sub">
      기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다. <br>
      주문번호를 클릭하시면 해당 주문에 대한 상새내역을 확인하실 수 있습니다.

    </div>
    
  </div>
  <div class="section2">
    <table class="section2_table">
      <!-- th -->
     <tr>
       <th><div>주문일자</div><div>[주문번호]</div></th>
       <th style="width: 10%;">이미지</th>
       <th style="width: 30%;">상품정보</th>
       <th>수량</th>
       <th style="width: 12%;">상품구매금액</th>
       <th>주문처리상태</th>
       <th>주문취소</th>
     </tr>
     <!-- tr -->
     <c:forEach var="list" items="${ list }">
         <tr>
           <td><fmt:formatDate value="${list.order_date}" pattern="yyyy/MM/dd" /></th> <!-- tb_bil -->
           <td><img src="/img/${ list.item_img }" alt="${list.item_img}" style="width: 70px; height: 70px; line-height: 70px;"></td> <!-- tb_item -->
           <td style="text-align: left;">${ list.item_name }</td> <!-- tb_item :: cart_id <-> bil_id로 연결 -->
           <td>${ list.order_count }개</td> <!-- tb_cart -->
           <td>${ list.order_price }원</td> <!-- tb_bil -->
           <td>
           
           <c:choose>
							<c:when test="${list.order_state == '1' }">
								결제중
							</c:when>
							<c:when test="${list.order_state == '2' }">
								결제 완료
							</c:when>
							<c:when test="${list.order_state == '3' }">
								배송중
							</c:when>
							<c:when test="${list.order_state == '4' }">
								배송 완료
							</c:when>
							
							</c:choose>
           </td> <!-- tb_bil -->
           <c:choose>
           	<c:when test="${list.order_state ==  '4' }">
           	<td><a href="review_view?order_no=${list.order_no }"><button id="orderButton" 
             style="margin: 0 auto; border-radius: 20px; background-color: white; 
             border: 1px solid lightgray; width: 70%; height: 30px;">리뷰쓰기</button></a></td>
             
           	</c:when>
           	
           	<c:otherwise>
           	 <td><a href="orderDelete?order_no=${list.order_no }"><button id="orderButton" 
             style="margin: 0 auto; border-radius: 20px; background-color: white; 
             border: 1px solid lightgray; width: 50%; height: 30px;">삭제</button></a></td>
           
           	</c:otherwise>
           	
           	
           	
           
           </c:choose>
           
        
         </tr>
     </c:forEach>
     

    </table>
  </div>
</div>
  
<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />

</body>
</html>