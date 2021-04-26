<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    width: 600px;
    height: 500px;
    margin:  100px auto;
    border: 1px solid pink;
    display: flex;
    flex-flow: column nowrap;
  }
  .review_title {
   
    width: 80%;


  }
  .review_writer {
    width: 20%;
  }

  .review_content {
    height: 400px;
    background-color: plum;
  }
  .review_header {
    display: flex;
    height: 100px;
    flex-flow: row nowrap;
    background-color: pink;
  }
</style>


<body>
  <div class="review_wrap">


<div class="review_header">

    <div class="review_title">
      ${dto.board_name}
    </div>

    <div class="review_writer">
      ${dto.board_writer}
    </div>
</div>

<div class="review_content">
  ${dto.board_content}
</div>

  </div>

  
</body>
</html>