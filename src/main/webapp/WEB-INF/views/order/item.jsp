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
    margin: 0 auto;
    margin-top: 50px;
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

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />
<c:forEach var="itemDto" items="${ list }">
  <div class="wrap">
    <div class="item_info">
      <div class="section1">
        <img alt="" src="/img/${ itemDto.item_img }">
      </div>
      <div class="section2">
        <div style="padding-bottom: 20px; font-size: 30px;">${ itemDto.item_name }</div>
        <div style="padding-top: 20px; padding-bottom: 5px; border-bottom: 1px solid rgb(133, 133, 133);">
          <h4 style="display: inline; font-weight: lighter;">판매가</h4>
          <h4 style="display: inline; float: right; font-weight: lighter;">${ itemDto.item_price }원</h4>
        </div>
        <c:if test="${ itemDto.item_stock > 10 }">
	        <c:if test="${user != null}">
	        	<%-- <div id="basketButton" onclick="alert('장바구니로 이동합니다.')"><a href="basket?user_no=${ user.user_no }"><input type="button" value="장바구니"/></a></div> --%>
	        	<div id="basketButton" onclick="alert('장바구니로 이동합니다.')"><a href="basketAdd?user_no=${ user.user_no }&item_no=${ itemDto.item_no }&order_count=1&order_price=${ itemDto.item_price }"><input type="button" value="장바구니"/></a></div>
	        </c:if>
	        <c:if test="${user == null}">
	        	<div id="basketButton" onclick="alert('로그인페이지로 이동합니다.')"><a href="login"><input type="button" value="장바구니"/></a></div>
	        </c:if>
	        <div id="orderButton" onclick="alert('구매 페이지로 이동합니다.')"><a href="./order"><input type="button" value="구매하기"/></a></div>        
        </c:if>
        <c:if test="${ itemDto.item_stock <= 10 }">
        	<div id="basketButton"><input type="button" value="품절 상품입니다."/></div>
        </c:if>
        <div style="clear:both; padding-top: 30px; padding-bottom: 5px; margin-bottom: 20px; border-bottom: 1px solid rgb(133, 133, 133);">
        	<c:if test="${user != null}">
        		${ user.user_name }님은 [        		
        		<a href="#" class="popper" data-popbox="pop1"> <!-- 이거추가하면 rankSystem 툴팁 적용됨 -->
				<jsp:include page="../main/rankSystem.jsp" />  <!-- 이거추가하면 rankSystem 툴팁 적용됨 -->
	        		<strong>
					    <%--적립금에 따른 유저 등급 --%>
					    <c:if test="${user.user_score < '100000'}">
					    	브론즈
					    </c:if>
					    
					    <c:if test="${user.user_score >= '100000' && user.user_score < '200000'}">
					    	실버
					    </c:if>
					    
					    <c:if test="${user.user_score >= '200000' && user.user_score < '300000' }">
					    	골드
					    </c:if>
					    
					    <c:if test="${user.user_score >= '300000' }">
					    	다이아
					    </c:if>			    
				    </strong>
			    </a>] 회원이십니다.			    
        	</c:if>
        </div>
        
      </div>
    </div>    
    <div class="section3">
      <img alt="" src="/img/${ itemDto.item_info_img }">
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
                <td>${ dto }</td>
                <td>${ dto }</td>
                <td>${ dto }</td>
                <td>${ dto }</td>
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
                <td>${ dto }</td>
                <td>${ dto }</td>
                <td>${ dto }</td>
                <td>${ dto }</td>
              </tr>            
          </c:forEach>     
        </table>
      </div>
    </div>

  </div>
</c:forEach>
<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />
</body>
</html>