<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <title>main</title>
  <style>
   
    
/* 캐러셀 */
.car {
  width: 100%;
  margin: 0 auto;
}
/* section1 */
.section1 {
  margin: auto;
  display: flex;
  flex-flow: column nowrap;
  text-align: center;
  width: 1080px;
  height: auto;
  padding-top: 100px;
}
.bestmenu {
  width: 100%;
  height: 100px;
}


/* section 2 */
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
    /* width: 275px; */
    width: 100%;
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
</head>
<body>
  
 <jsp:include page="../main/header.jsp" />

  <!--캐러샐  -->
<div class="car">
<div id="demo" class="carousel slide align-center" data-ride="carousel" > 
  <div class="carousel-inner"> 
    <!-- 슬라이드 쇼 --> 
    <div class="carousel-item active"> <!--가로--> 
      <img class="d-block w-100" src="https://ifh.cc/g/Fbjjqj.jpg" alt="First slide"> 
      <div class="carousel-caption d-none d-md-block">
        <!-- <h1>Creative web Design</h1>
        <p>정직과 신뢰, 디자인을 최우선으로 생각하며 고객과 함께 할 수 있는
          든든한 파트너가 되도록 최선을 다합니다.</p> -->
      </div>
    </div>
    <div class="carousel-item"> 
      <img class="d-block w-100" src="https://ifh.cc/g/77j21P.jpg" alt="Second slide"> 
      <div class="carousel-caption d-none d-md-block">
        <!-- <h1>Versatile web Design</h1>
        <p>다양한 기업환경에 적용이 가능한 디자인으로 보다 큰 만족과 감동을
          드리도록 최선을 다합니다.</p> -->
      </div> 
    </div> 
    <div class="carousel-item"> 
      <img class="d-block w-100" src="https://ifh.cc/g/ywCSSW.jpg" alt="Third slide"> 
      <div class="carousel-caption d-none d-md-block">
        <!-- <h1>Responsive web Design</h1>
        <p>PC 및 모바일에서 접속하는 디바이스 환경에 최적으로 대응하는
          반응형디자인으로 고객만족을 최우선으로 합니다.</p> -->
      </div>
    </div>
   </div>
    <!-- / 슬라이드 쇼 끝 --> 
    <!-- 왼쪽 오른쪽 화살표 버튼 --> 
    <a class="carousel-control-prev" href="#demo" data-slide="prev"> 
      <span class="carousel-control-prev-icon" aria-hidden="true"></span> 
      <!-- <span>Previous</span>  -->
    </a> 
    <a class="carousel-control-next" href="#demo" data-slide="next"> 
      <span class="carousel-control-next-icon" aria-hidden="true"></span> 
      <!-- <span>Next</span>  -->
    </a> <!-- / 화살표 버튼 끝 --> 
    <!-- 인디케이터 --> 
    <ul class="carousel-indicators"> 
      <li data-target="#demo" data-slide-to="0" class="active"></li> 
      <!--0번부터시작--> 
      <li data-target="#demo" data-slide-to="1"></li> 
      <li data-target="#demo" data-slide-to="2"></li> 
    </ul> <!-- 인디케이터 끝 --> 
  </div>
</div>        
<!-- section1 -->

<div class="section1">
    <div class="bestmenu">
      <h1 style="color: darkgreen;">인기 메뉴</h1> 
    </div>    
  </div>

<div style="width:1280px; height:1200px; margin: 0 auto; margin-top: 50px; /* border:1px solid red; */">
<div class="section2">
    <div class="section_content">
      <c:forEach var="dto" items="${ list }">
        <div class="section_content_div">
          <div class="img_tool">
            <a href="item?item_no=${ dto.item_no }"><img alt="" src="/img/${ dto.item_img }"></a>
          </div><br>
          <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
            <h3 style="font-size: 25px">${ dto.item_name }</h3>
          </div>
          <div style="width: 220px; height: 40px; line-height: 40px;">${ dto.item_name }</div>
          <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">${ dto.item_price }원</div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>
</div>

<jsp:include page="footer.jsp" />




<script> 
  $('.carousel').carousel({ 
      interval: 1200, //(3초)기본 5초 
      keyboard: true,
      pause: 'hover',
      slide: false,
      wrap: true,
      touch: true
    }) 
    </script>
<script>
  $(document).ready(function(){
    $(window).scroll(function () {
      if ($(this).scrollTop() > 50) {
        console.log('fadeIn');
        $('#back-to-top').fadeIn();
      } else {
        console.log('fadeOut');
        $('#back-to-top').fadeOut();
      }
    });
    // scroll body to 0px on click
    $('#back-to-top').click(function () {
      console.log('click');
      $('#back-to-top').tooltip('hide');
      $('body,html').animate({
        scrollTop: 0
      }, 500);
      return false;
    });
    $('#back-to-top').tooltip('show');
  });
  $('.carousel').carousel({ 
    interval: 2000 //기본 5초 
  }) 
  </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>