<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>리스트</title>
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
  .section1, .section2, .section3{
    width: 1280px;
  }
  .section1{
    margin-top: 20px;
    padding: 10px 0;

    width: 1280px;

    border-bottom: 0.5px solid lightgray;
    display: flex;
  }
  /* a */
  a{
    text-decoration: none;
    color: black;
  }
  a:hover{
    border-radius: 20px;
    background-color: wheat;
    color:sienna;
  }
  /*  */
  .section_content
  {
    width: 1280px;
  }
  .section_content_div{
    width: 280px;
    height: 480px;
    margin: 0 18px 80px 18px;
    border : .5px solid rgb(220, 220, 220);
    /* float하는이유 : 4개가 넘어가면 자동으로 아래에 붙게하기위해 */
    float : left; 


    /* 내부컨텐츠 정렬 */
    display: flex;
    flex-direction: column;    
  }
  .section_content > div > p{
    padding-top: 10px;
  }
  /* 이미지를 가둬놓기위한 툴 */
  .section_content div .img_tool{
    width: 280px;
    height: 280px;
    
    overflow: hidden;
    /* border: 1px solid #F27078; */
  }
  .section_content div img{
    width: 280px;
    height: 280px;    
  }
  .section_content div img:hover{    
    /* 필터 */
    filter: brightness(1.08);
    /* 사이즈 */
    transform: scale(1.1, 1.1);
    transition: all .5s ease-in-out;  
  }
</style>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />

<div style="width:1280px; height:1200px; margin: 0 auto; margin-top: 50px; border:1px solid red;">
  <div class="section1" style="margin-bottom: 60px;">
    <h4 style="font-size: 20px; margin-right: 60%;">(카테고리) ${ listName }</h4>
    <div>
      <!-- 쿼리문으로 정렬처리해서 페이지 리다이렉트하면 될듯? -->
      <a href="#">신상품</a>&nbsp;
      <a href="#">낮은가격</a>&nbsp;
      <a href="#">높은가격</a>&nbsp;
      <a href="#">인기상품</a>
    </div>
  </div>
  <div class="section2">
    <div class="section_content">
      <c:forEach var="dto" items="${ list }">
        <div class="section_content_div">
          <div class="img_tool">
            <img src="//www.cafeplay.co.kr/web/product/medium/201907/cb858589efbe54fab8b5948d2f18ce06.jpg" alt="">
          </div><br>
          <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
            <h3>${ item_name }</h3>
          </div>
          <div style="width: 220px; height: 40px; line-height: 40px;">${ item_info }</div>
          <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">${ item_price }원</div>
        </div>
      </c:forEach>
      
      <!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
      <!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
      <!-- 디버깅용 더미자료 / 백 연결후에는 삭제하자 -->
      <div class="section_content_div">
        <div class="img_tool">
          <a href="item"><img src="//www.cafeplay.co.kr/web/product/medium/201908/2839c67ab50e7e732fec93db0ca3cb4d.jpg" alt=""></a>
        </div><br>
        <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
          <h3>상품이름 들어갈곳</h3>
        </div>
        <div style="width: 220px; height: 40px; line-height: 40px;">간단한 정보?</div>
        <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">가격</div>
      </div>
      <div class="section_content_div">
        <div class="img_tool">
          <a href="item"><img src="//www.cafeplay.co.kr/web/product/medium/20200508/751d5a73b9b8f8fa657d8d28d194a636.jpg" alt=""></a>
        </div><br>
        <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
          <h3>${ item_name }</h3>
        </div>
        <div style="width: 220px; height: 40px; line-height: 40px;">${ item_info }</div>
        <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">${ item_price }원</div>
      </div>
      <div class="section_content_div">
        <div class="img_tool">
          <a href="item"><img src="//www.cafeplay.co.kr/web/product/medium/201908/ae57500ecf1f8f2ae71c4ad7ecd315d9.jpg" alt=""></a>
        </div><br>
        <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
          <h3>${ item_name }</h3>
        </div>
        <div style="width: 220px; height: 40px; line-height: 40px;">${ item_info }</div>
        <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">${ item_price }원</div>
      </div>
      <div class="section_content_div">
        <div class="img_tool">
          <a href="item"><img src="//www.cafeplay.co.kr/web/product/medium/201908/ae57500ecf1f8f2ae71c4ad7ecd315d9.jpg" alt=""></a>
        </div><br>
        <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
          <h3>${ item_name }</h3>
        </div>
        <div style="width: 220px; height: 40px; line-height: 40px;">${ item_info }</div>
        <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">${ item_price }</div>
      </div>
      <div class="section_content_div">
        <div class="img_tool">
          <a href="item"><img src="//www.cafeplay.co.kr/web/product/medium/201908/ae57500ecf1f8f2ae71c4ad7ecd315d9.jpg" alt=""></a>
        </div><br>
        <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
          <h3>${ item_name }</h3>
        </div>
        <div style="width: 220px; height: 40px; line-height: 40px;">${ item_info }</div>
        <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">${ item_price }</div>
      </div>
      <!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
      <!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
      <!-- /////////////////////////////////////////////////////////////////////////////////////////////////// -->
      
    </div>
  </div>
</div>

<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />

</body>
</html>