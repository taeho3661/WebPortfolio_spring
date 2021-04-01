<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>상품등록</title>
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
  .table td:nth-child(2n-1){
    width: 160px;
    height: 50px;
    text-align: center;
    
    font-size: 20px;
  }
  .table td:nth-child(2n){
    padding-left: 10px;
    width: 500px;
    text-align: left;
  }
  .table td:nth-last-child(){
    text-align: right;
  }
  .inputBox{
    width: 200px;
    height: 40px;
    padding-left: 10px;
  }
  #productAddTextarea{
    resize: none;
    width: 480px;
    height: 300px;
    padding-left: 10px;
    padding-top: 10px;
  }

  #productAddSubmitButton{
    width: 80px;
    height: 30px;

    border: 1px solid skyblue; 
    color: skyblue; 
    padding: 5px;
    margin-right: 20px;
    border-radius: 10px;
  }
  #productAddSubmitButton:hover{
    color:white; 
    background-color: skyblue;
  }

</style>
<body>

<jsp:include page="adminHeader.jsp"/>

  <div class="wrap">
    <div class="aside">
      <a href="memberList">회원 목록</a>
      <a href="itemList">상품 목록</a>
      <a href="itemAddForm" id="selected">상품 등록</a>
      <a href="orderList">주문 목록</a>
      <a href="itemQna">문의 목록</a>
    </div>
    <div class="section">
      <div class="sectionTitle">
        <h1>상품 등록</h1>
      </div>
      <table class="table">
        <form action="itemAdd" method="post">
          <tr>
            <td>상품명</td>
            <td><input type="text" name ="item_nm" placeholder="상품명을 입력해주세요." class="inputBox"></td>
          </tr>
          <tr>
            <td>판매가</td>
            <td><input type="text" name ="price" placeholder="상품 가격을 입력해주세요." class="inputBox"></td>
          </tr>
          <tr>
            <td>재고</td>
            <td><input type="text" name ="stock" placeholder="상품 갯수를 입력해주세요." class="inputBox"></td>
          </tr>
          <tr>
            <td>내용</td>
            <!-- <td><input type="textarea" name ="product_info" placeholder="세부 내용을 입력해주세요." class="inputBox"></td> -->
            <td><textarea name ="con_img" placeholder="세부 내용을 입력해주세요." id="productAddTextarea"></textarea></td>
          </tr>
          <tr>
            <td></td>
            <td style="text-align: right;">
              <input type="submit" value="제품등록" id="productAddSubmitButton">
            </td>
          </tr>		
        </form>
      </table>
    </div>
  </div>
</body>
</html>