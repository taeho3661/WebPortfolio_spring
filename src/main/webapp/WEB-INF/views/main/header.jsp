<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <title>Header</title>
  <style>
    *{
    margin: 0;
    padding: 0;
    text-decoration: none;
    /* border: 1px solid red; */
    }
    body{
    overflow-y:scroll;
    }
    
    .header {
    width: 1480px;
    margin: 0 auto;
    height: auto;
    
    }
    .header_topnav { 
      font-size: 12px;
      margin: 10px;
      display: flex;
      justify-content: flex-end;
    }
    .header_topnav a {
      color: darkgrey;
      margin-right: 15px;
    }
    .img {
      margin: auto;
      display: flex;
      justify-content: center;
    }
    /* header nav 시작 */
    .header_nav {
      height: 35px;
      background-color: #F27078;
      display: flex;
      flex-flow: row nowrap;
      justify-content: center;
      position: sticky;
      z-index: 1000;
      left: 0px;
      top: 0px;
    }
    .header_nav a {
      padding: 0 40px;
      padding-top: 3px;
      color: rgb(61, 53, 53);
      font-weight: bold;
      font-size: 18px;
    }
   
 
/* 드롭다운 */
.dropdown {
    position: relative;
    display: inline-block;
  display: flex;
  flex-flow: row nowrap;
}
.dropdown a{
  color: rgb(59, 56, 56);
}
.dropdown-content {
    display: none;
    flex-flow: column wrap;
    margin-top: 35px;
    position: absolute;
    background-color: rgb(127, 138, 211);
    border: 0.05px solid rgb(228, 219, 219);
    z-index: 1;
}
.dropdown-content a {
  font-size: 14px;
  text-decoration: none;
  color: rgb(59, 56, 56);
}
.dropdown:hover .dropdown-content {
  display: block;
  background-color: white;
}
.dropdown:hover .dropbtn:hover {
  background-color: white;
  }
  
 @import url(https://fonts.googleapis.com/css?family=Open+Sans);
/* search */
.serch {
  padding: 5px;
  margin-top: 3px;
  height: 28px;
  border: 1px solid rgb(176, 170, 170);
  border-right: none;
  background-color: rgb(231, 218, 218);
  border-bottom: 0.5px solid #c9c2c2;
  border-radius: 10px 0 0 10px;
  outline: none;
}
.searchButton {
  margin-top: 3px;
  width: 35px;
  height: 28px;
  border: 1px solid rgb(176, 170, 170);
  border-left: none;
  background: rgb(231, 218, 218);
  color: rgb(135, 135, 152);
  border-radius: 0 10px 10px 0 ;

 
  
}

 </style>
</head>
<body>
  
  <div class="header">
    <c:if test="${user == null}">
    	<div class="header_topnav">
    		<a href="login">로그인</a>
    		<a href="register">회원가입</a>
    	</div>
    </c:if>
    
    <c:if test="${user != null}">
    	<div class="header_topnav">
    		<label>환영합니다 ${user.user_name }님</label>
    		<a href="logout">로그아웃</a>
    	</div>
    </c:if>
    
    <div class="img">
      <a href="main"><img style="width: 220px;" src="https://ifh.cc/g/5Gy0b5.png" alt=""></a>
    </div>
  </div>
  <!-- 드롭다운 -->
  <div class="header_nav">
       <div class="dropdown">
          <a class="dropbtn" href="">ABOUT</a>
          <div class="dropdown-content">
            <a href="#">공지사항</a>
            <a href="introduce">회사소개</a>
            <a href="map">오시는길</a>
            <a href="#">이벤트</a>
          </div>
      </div>

      <div class="dropdown">
        <a class="dropbtn" href="">DESSERT</a>
        <div class="dropdown-content">
          <a href="list">마카롱</a>
          <a href="list">머핀</a>
          <a href="list">CAKE</a>
          <a href="list">BREAD</a>
        </div>
    </div>

    <div class="dropdown">
      <a class="dropbtn" href="">DRINK</a>
      <div class="dropdown-content">
        <a href="#">Name1</a>
        <a href="#">Name1</a>
        <a href="#">Name1</a>
        <a href="#">Name1</a>
      </div>
  </div>

  <div class="dropdown">
    <a class="dropbtn" href="">고객센터</a>
    <div class="dropdown-content">
      <a href="review">상품후기</a>
      <a href="inquiryList">상품문의</a>
      <a href="#">이용약관</a>
      <a href="#">개인정보</a>
    </div>
</div>
                   
   
  
  <input class="serch"  type="text" value="">
<button type="submit" class="searchButton" ><i class="fa fa-search"></i>
</button>
  

</div>


</body>
</html>