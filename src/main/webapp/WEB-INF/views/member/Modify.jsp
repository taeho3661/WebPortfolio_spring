<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@500&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>


<body>
  <style>
    .wrap
    { 
      font-family: 'Noto Sans JP', sans-serif; /* 목록에 점없는거. */
      list-style: none;   /* 밑줄점없앰. */
      text-decoration: none; /* 테이블 붙임 */
      border-collapse: collapse ;
      margin:auto;
      padding:0px;
      color:black;
      height: auto;
      width: 1200px;
    }

 
    .joinheader{
      margin: 46px 0 9px;
      color: #4e4748;
      font-size: 18px;
    }
    .join{
      font-size: 11px;
      
      
      width: 1280px;
      height: auto;
      margin: 30px auto auto auto;
    }
    .main{
      display: flex;
      margin-left: 15px;
      margin-top: 10px;
    }
    .join_textside{
      width: 150px;
      height: 45px;
      
  
    }
    .textbox{
      margin-left: 15px;
      margin-right: 15px;
    }
    .join_ID{
      
      
    }
    .Line{
      border-bottom:1px solid #DDDDDD;
    }
    .join_ID > input{
      width: 168px;
      height: 24px;
    }
    #join_ID_Check{
      display: inline-block;
      text-align: center;
      color: #fff;
      cursor: pointer;
      border: 1px solid #fff;
      padding: 0 8px;
      height: 22px;
      line-height: 22px;
      font-size: 7px;
	  text-decoration: none;
    }

    .join_Password > input{
      width: 168px;
      height: 24px;
      
    }
    #hint{
      margin-left: 15px;
      height: 24px;
      margin-top: 5px;
    }
    
    .join_Passwordcheck > input{
      width: 168px;
      height: 24px;
    }
    
    
    .join_textside_Address{
      width: 151px;
      height: 150px;
      
    }

    .join_Name > input{
      width: 168px;
      height: 24px;
    }
    .agree {
    border: 1px solid #e7e7e7;
    color: #757575;
    font-size: 11px;
    line-height: 20px;
    overflow: auto;
    height: 160px;
    padding: 20px;
    
    }
    .sample2_address{
      width: 56px;
      height: 24px;
      
    }
    .sample2_address{
      width: 120px;
      height: 24px;
      
    }
    .sample2_address2{
      margin-left: 15px;
      margin-top: 7px;
      
      width: 510px;
      height: 24px;
    }
    .sample2_button{
      width: 82px;
      height: 24px;
      margin-left: 15px;
    }
    .phonetext > input{
      width: 160px;
      height: 24px;
      
    }
    #phone1{
      margin-left: 15px;
      
      width: 60px;
      height: 24px;
    }
    #exampleInputEmail1{
      margin-left: 15px;
      height: 24px;
      width: 500px;
      margin-bottom: 35px;
    }
    .lastbutton{
      display: flex;
      justify-content: center;
      
    }
    .lastbutton > a{
      margin: 7px;
    }
    .lastbutton_member{
      margin: 7px;
    }
  	.lastbutton{
      display: flex;
      justify-content: center;
      
    }
    .lastbutton > a{
      margin: 7px;
    }
    .lastbutton_member{
      margin: 7px;
    }
    .lastbutton_member2{
      display: flex;
      justify-content: flex-end;
      
    }
    .lastbutton_member2 > input{
      margin: 7px 7px 7px 7px;
      background-color: darkgrey;
      
      
    }
  	#email{
      height: 40px;
    }
  
  </style>

  

 <jsp:include page="../main/header.jsp" />


<div class= "wrap">
  
  <form method="POST" name="modify_form" onSubmit="check()" action="modifyAction">
    <div class="join ">
      <div class="joinheader">필수항목입니다</div>
      <div class="join_ID main Line ">
        <div class="join_textside">아이디 </div>
        <input type="text" class="form-control textbox" name="user_id" value="${dto.user_id }" readonly id="user_id">
        <a href="#none" title="새창 열기" onclick="checkIdLayer('/member/check_id.html')" id="join_ID_Check" class="btn-secondary btn-lg ">아이디 중복체크</a>
      </div>
      <div class="join_Password main Line">
        <div class="join_textside">비빌번호</div>
        <input type="password" class="form-control textbox" name="user_pw" id="pw1">
    
      </div>
      <div class="join_Passwordcheck main Line">
        <div class="join_textside">비빌번호 확인</div>
        <input type="password" class="form-control textbox" id="pw2">
      </div>

      <div class="join_Passwordcheck main Line">
        <div class="join_textside">이름</div>
        <input type="text" class="form-control textbox" name="user_name" value="${dto.user_name }">
        
      </div>

      

      <div class="main Line">
        <div class="join_textside_Address ">주소</div>



        <div>
          
          <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
          <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
          <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
          </div>
          <input type="text" id="sample2_postcode" placeholder="우편번호" style="width:200px; height:30px;  margin-left: 15px;" name="adr1">
        <input type="button" onclick="sample2_execDaumPostcode()" value="주소 찾기" style="width:80px; height:30px;  margin-left: 5px; padding: 0px; "><br>
        <input type="text" id="sample2_address" placeholder="주소" style="width:200px; height:30px; margin-top: 10px; margin-left: 15px;" name="adr2"><br>
        <input type="text" id="sample2_detailAddress" placeholder="상세주소" style="width:200px; height:30px; margin-top: 10px; margin-left: 15px;" name="adr3">
        <input type="text" id="sample2_extraAddress" placeholder="참고항목" style="width:80px; height:30px; margin-top: 10px; margin-left: 5px; " name="adr4">

        <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
        <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
          <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
        </div>

        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
            // 우편번호 찾기 화면을 넣을 element
            var element_layer = document.getElementById('layer');

            function closeDaumPostcode() {
                // iframe을 넣은 element를 안보이게 한다.
                element_layer.style.display = 'none';
            }

            function sample2_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var addr = ''; // 주소 변수
                        var extraAddr = ''; // 참고항목 변수

                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            addr = data.roadAddress;
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            addr = data.jibunAddress;
                        }

                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                        if(data.userSelectedType === 'R'){
                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                extraAddr += data.bname;
                            }
                            // 건물명이 있고, 공동주택일 경우 추가한다.
                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                            if(extraAddr !== ''){
                                extraAddr = ' (' + extraAddr + ')';
                            }
                            // 조합된 참고항목을 해당 필드에 넣는다.
                            document.getElementById("sample2_extraAddress").value = extraAddr;
                        
                        } else {
                            document.getElementById("sample2_extraAddress").value = '';
                        }

                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('sample2_postcode').value = data.zonecode;
                        document.getElementById("sample2_address").value = addr;
                        // 커서를 상세주소 필드로 이동한다.
                        document.getElementById("sample2_detailAddress").focus();

                        // iframe을 넣은 element를 안보이게 한다.
                        // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                        element_layer.style.display = 'none';
                    },
                    width : '100%',
                    height : '100%',
                    maxSuggestItems : 5
                }).embed(element_layer);

                // iframe을 넣은 element를 보이게 한다.
                element_layer.style.display = 'block';

                // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
                initLayerPosition();
            }

            // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
            // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
            // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
            function initLayerPosition(){
                var width = 300; //우편번호서비스가 들어갈 element의 width
                var height = 400; //우편번호서비스가 들어갈 element의 height
                var borderWidth = 5; //샘플에서 사용하는 border의 두께

                // 위에서 선언한 값들을 실제 element에 넣는다.
                element_layer.style.width = width + 'px';
                element_layer.style.height = height + 'px';
                element_layer.style.border = borderWidth + 'px solid';
                // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
                element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
                element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
            }
        </script>
        </div>

      </div>



      <div class="main Line phonetext">
        <div class="join_textside">휴대전화</div>
        <input type="text" class="form-control textbox " name="user_phone" value="${dto.user_phone }">
      </div>

      <div class="main Line" id="email">
        <div class="join_textside">이메일</div>
        <div class="mb-3">
          <input type="email" class="form-control email" id="exampleInputEmail1" aria-describedby="emailHelp" name="user_email" value="${dto.user_email }">
        </div>
      </div>
      
	<div class="lastbutton">
      <input type="submit" class="btn btn-secondary btn-lg lastbutton_member" value="회원정보 수정" ></input>
      <a href=# onclick="modify();"><input type="button" class="btn btn-secondary btn-lg lastbutton_member" value="회원정보 수정"></input></a>
      <a class="btn btn-secondary btn-lg" href="mypage">취소</a>
      <div class="lastbutton_member2">
        <a href=# onclick="dlt();"><input type="button" class="btn btn-secondary btn-lg " value="회원탈퇴"></input></a>
      </div>
    </div>
	




    </div> <!-- join main 부분-->
</form>
</div> <!-- wrap-->
 <jsp:include page="../main/footer.jsp" />
 <script type="text/javascript">
	
	function dlt()
	{
		var user_id = document.getElementById('user_id').value;
		if(window.confirm('정말 탈퇴하시겠습니까?'))
			{
				window.location = '/modifyDelete';
			}
	}
 </script>
</body>
</html>