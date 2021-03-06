<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>1:1문의</title>
  <script type="text/javascript">
  
	  function send() 
	  {
		  var board_no = document.getElementsByName("board_no");
		  var board_reply = document.getElementsByName("board_reply");
		  var url = "/admin/replySend?board_no=" + board_no[0].value + "&board_reply=" + board_reply[0].value;
		      opener.document.location.href=url;
		  window.close();
		}
		
  </script>
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

    border: 1px solid lightsalmon; 
    color: lightsalmon; 
    background-color: white;
    padding: 5px;
    margin-right: 20px;
    border-radius: 10px;
  }
  #productAddSubmitButton:hover{
    color:white; 
    background-color: lightsalmon;
  }

</style>
<body>
  <div class="wrap">
    <div class="qnaTitle">
      <h1>상품 문의</h1>
    </div>
    <form method="post" name="send_form">
      <table class="table">
<%--         <tr>
          <td style="background-color: lightgray;">상품명</td>
          <td>${dto.item_name} </td>
        </tr> --%>
        <tr>
          <td style="background-color: lightgray;">문의제목</td>
          <td>${dto.board_name}</td>
        </tr>
        <tr>
          <td style="background-color: lightgray;">문의자</td>
          <td>${dto.board_writer }</td>
        </tr>
        <tr>
          <td style="background-color: lightgray;">내용</td>
          <td><textarea  id="productAddTextarea" placeholder="${dto.board_content }" readonly></textarea></td>
        </tr>
        <tr>
          <td style="background-color: lightgray;">답변</td>
          <!-- <td><input type="textarea" name ="product_info" placeholder="세부 내용을 입력해주세요." class="inputBox"></td> -->
          <td><textarea name ="board_reply" placeholder="답변 내용을 입력해주세요." id="productAddTextarea"></textarea></td>
        </tr>
        <tr>
          <td><input type="hidden" name="board_no" value="${dto.board_no }"></td>
          <td style="text-align: right;">
            <input type="button" value="답변하기" id="productAddSubmitButton" onclick="send()">
          </td>
        </tr>		
      </table>
    </form>
  </div>
</body>
</html>