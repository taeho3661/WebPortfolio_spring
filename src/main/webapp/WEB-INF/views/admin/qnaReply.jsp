<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>1:1문의</title>
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
  .qnaTitle{
    text-align: center;
  }
  .table{
    margin-top: 30px;
  }
  .table td:nth-child(2n-1){
    width: 160px;
    height: 30px;
    text-align: center;
    
    font-size: 15px;
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
  <div class="wrap">
    <div class="qnaTitle">
      <h1>상품 문의</h1>
    </div>
    <table class="table">
      <form action="productAdd.do" method="post">
        <tr>
          <td>상품명</td>
          <td>~~</td>
        </tr>
        <tr>
          <td>문의제목</td>
          <td>~~</td>
        </tr>
        <tr>
          <td>문의자</td>
          <td>~~</td>
        </tr>
        <tr>
          <td>내용</td>
          <td><textarea name ="product_info" placeholder="세부 내용을 입력해주세요." id="productAddTextarea"></textarea></td>
        </tr>
        <tr>
          <td>답변</td>
          <!-- <td><input type="textarea" name ="product_info" placeholder="세부 내용을 입력해주세요." class="inputBox"></td> -->
          <td><textarea name ="product_info" placeholder="답변 내용을 입력해주세요." id="productAddTextarea"></textarea></td>
        </tr>
        <tr>
          <td></td>
          <td style="text-align: right;">
            <input type="submit" value="답변하기" id="productAddSubmitButton">
          </td>
        </tr>		
      </form>
    </table>
  </div>
</body>
</html>