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
    *{
      margin: 0;
      padding: 0;
      text-decoration: none;
      /* border: 1px solid red; */
    }
    
/* 캐러셀 */
.car {
  width: 1520px;
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
.best {
  display: flex;
  flex-flow: row wrap;
  width: 100%;
  padding: 20px;
  padding-top: 100px;

}
.best_one {
  width: 260px;
  text-align: left;
  padding: 10px;

}
.best_one img {
  width: 240px;
}

.best_one a{
  text-decoration: none;
  color: black;
}
.price {
  border: 1px solid darkgray;
  font-size: 13px;
}
.price > p {
  font-weight: bold;
}

/* section2 */
.section2 {
  width: 100%;
  height: 1000px;
  /* border: 1px solid red;  */
}
.font2 {
  text-align: center;
  font-size: 30px;
  color: #F27078;
}
.event {
  display: flex;
  flex-flow: column nowrap;
  align-items: center;
}
.event img {
  width: 1000px;
  margin-top: 30px;
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
  
    <div class="best">
      <div class="best_one">
        <a href="#">
          <div><img src="https://ifh.cc/g/yzuf7h.jpg" alt=""></div>
          <div class="price">캐롯 케이크 95g X 5조각(개당 2,520원)<br><hr> 즐거운 달콤한 캐롯 케이크<p>12,600원</p></div>
        </a>
      </div>

      <div class="best_one">
        <a href="#">
          <div><img src="https://ifh.cc/g/WYS9of.jpg" alt=""></div>
          <div class="price">레인보우 케이크 5ea(조각당 2,900원)<br><hr>보는 즐거움과 먹는 즐거움<p>14,500원</p></div>
        </a>
      </div>

      <div class="best_one">
        <a href="#">
          <div><img src="https://ifh.cc/g/M3BA7p.jpg" alt=""></div>
          <div class="price">디럭스초코크레이프케이크(조각) 85g<br><hr>카페의 시그니처 케이크가 될 아이...<p>13,200원</p></div>
        </a>
      </div>

      <div class="best_one">
        <a href="#">
          <div><img src="https://ifh.cc/g/irbqb7.jpg" alt=""></div>
          <div class="price">블루베리 베이글 110g x 6ea (개당 883원)<br><hr>블루베리의 상큼함과 베이글의 만남...<p>5,300원</p></div>
        </a>
    </div>
    <div class="best_one">
      <a href="#">
        <div><img src="https://ifh.cc/g/cFLc8f.jpg" alt=""></div>
        <div class="price">폴리치즈케이크 90g x 5ea <br><hr>최고급 우유가 만들어내는 시그니처...<p>11,000원</p></div>
      </a>
  </div>

  <div class="best_one">
    <a href="#">
      <div><img src="https://ifh.cc/g/bapdXW.png" alt=""></div>
      <div class="price">에멘탈 치즈 케이크 150g x 6ea <br><hr>요즘 트렌드 케이크<p>18,600원</p></div>
    </a>
</div>

  <div class="best_one">
    <a href="#">
      <div><img src="https://ifh.cc/g/anb4tD.jpg" alt=""></div>
      <div class="price">레드벨벳 케이크 90g x 5ea  <br><hr>촉촉한 와인시트와 고소한 버터크림...<p>12,600원</p></div>
    </a>
  </div>

  <div class="best_one">
    <a href="#">
      <div><img src="https://ifh.cc/g/CdXYpb.png" alt=""></div>
      <div class="price">허니버터볼 200g x 4ea <br><hr>바게트 통채로 구운 후 허니버터...<p>13,500원</p></div>
    </a>
  </div>

    </div>

    
  </div>

<!-- section2 -->
<div class="section2">
<div class="font2">
  <p>EVENT</p>
</div>
<div class="event">
  <a href=""><img src="https://ifh.cc/g/NggSmr.jpg" alt=""></a>
  <a href=""><img src="https://ifh.cc/g/NggSmr.jpg" alt=""></a>
  <a href=""><img src="https://ifh.cc/g/NggSmr.jpg" alt=""></a>
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