<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>구매페이지</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function fn_setCustomer(){
		var settingName = $('.hidden_user_name').val();
		var settingPhone = $('.hidden_user_phone').val();
		var settingAdr1 = $('.hidden_user_adr1').val();
		var settingAdr2 = $('.hidden_user_adr2').val();
		var settingAdr3 = $('.hidden_user_adr3').val();
		var settingAdr4 = $('.hidden_user_adr4').val();
		//document.getElementById('tajooSet').value = settingName;
		$('.hidden_user_name_set').val(settingName);
		$('.hidden_user_phone_set').val(settingPhone);
		$('.hidden_user_adr1_set').val(settingAdr1);
		$('.hidden_user_adr2_set').val(settingAdr2);
		$('.hidden_user_adr3_set').val(settingAdr3);
		$('.hidden_user_adr4_set').val(settingAdr4);
		
		console.log(settingName);
		console.log(settingPhone);
		console.log(settingAdr1);
		console.log(settingAdr2);
		console.log(settingAdr3);
		console.log(settingAdr4);
	}
</script>
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
    height: 1000px;
    
    margin: 0 auto;
    margin-top: 50px;
    
    background-color: rgb(238, 238, 238);
    display: flex;
    justify-content: center;
  }
  .section1, .section2{
    /* border:1px solid red; */
    margin: 10px;
    /* padding: 10px; */
  }
  .section1{
    width: 60%;
    height: 100px;
  }
  .section2{
    width: 35%;
    height: 100px;
  }
  .section_con{
    background-color: white;
    margin: 20px 0px;
    padding: 10px;
    /* height: 100px; */
  }
  .item_info{
    /* width: 95%; */
    height: 90px;
    
    margin-top: 15px;
    /* border:1px solid red; */
    border-bottom:1px solid rgb(238, 238, 238);
  }
  .item_con1{
    /* border:1px solid blue; */
    /* width: 100px; */
    float:left;
  }
  /* .item_con2{ */
    /* border:1px solid green;     */
  /* } */
  /* #del_info > input{ */
    /* margin-bottom: 10px; */
  /* } */
  /* ---------------------------------------------------------테이블~ */
  .table{
    margin-top: 10px;
    font-size: 14px;
    /* border:1px solid blue; */
    width: 100%;
    height: 200px;
    border-collapse: collapse;
  }
  /* .table td{ */
    /* border:1px solid green; */
  /* } */
  .table td:nth-child(2n){
    text-align: right;
  }

  /* ---------------------------------------------------------input~ */
  input{
    color:rgb(102, 99, 102);
    padding-left: 10px;
  }
  input::placeholder{
    color:thistle;
    /* padding-left: 10px; */
  }
  #totalPriceAmount
  {
  	font-size: 18px;
  }
  #totalPaymentAmount
  {
  	font-size: 20px;
  }
</style>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />

  <form method="POST" action="orderCompleted">
  	<input class="hidden_user_name" type="hidden" value="${ user.user_name }">
  	<input class="hidden_user_phone" type="hidden" value="${ user.user_phone }">
  	<input class="hidden_user_adr1" type="hidden" value="${ user.user_adr1 }">
  	<input class="hidden_user_adr2" type="hidden" value="${ user.user_adr2 }">
  	<input class="hidden_user_adr3" type="hidden" value="${ user.user_adr3 }">
  	<input class="hidden_user_adr4" type="hidden" value="${ user.user_adr4 }">
  	  
	  <div class="wrap">
	    <div class="section1">
	      <div class="section_con">
	        <h4>주문 상품 정보</h4>
	        <c:forEach var="dto" items="${ list }" >
	        <input type="hidden" name="order_no" value="${ dto.order_no }" >
	          <div class="item_info">
	            <div class="item_con1">
	              <div style="width: 100px;"><img src="/img/${ dto.item_img }" alt="" style="width: 85px;"></div>
	            </div>
	            <div class="item_con2">
	              <div style="color:brown;"><h4>${ dto.item_name }</h4></div>
	              <div style="font-weight: lighter;">${ dto.order_count }</div>
	              <div style="font-weight: bolder;" class="order_price">${ dto.order_price }</div>
	            </div>
	          </div>
	        </c:forEach>
	      </div>
	      <div class="section_con">
	        <h4>주문자 정보</h4>
	        <input type="text" placeholder="구매자명" value="${ user.user_name }" style="width:25%; height:30px; margin-top: 10px; color:rgb(128, 128, 128);" readonly>
	        <input type="text" placeholder="전화번호" value="${ user.user_phone }" style="width:50%; height:30px; margin-top: 10px; color:rgb(128, 128, 128);" readonly>
	      </div>
	      <div class="section_con" id="del_info">
	        <h4>배송 정보</h4>
	        <div style="font-size: 14px; margin-top: 10px;"><input type="checkbox" onclick="fn_setCustomer()" name="sameInfo" value=""> 주문자 정보와 동일</div>
	        <input type="text" class="hidden_user_name_set" placeholder="수령인" style="width:25%; height:30px; margin-top: 10px;">
	        <input type="text" class="hidden_user_phone_set" placeholder="phone1 + phone2 + phone3" style="width:50%; height:30px; margin-top: 10px;"> <br>
	
	        <!-- ///////////////////////////////////////////////////////////////////////// -->
	        <!-- ///////////////////////////// 다음 API 주소 ////////////////////////////// -->
	        <!-- ///////////////////////////////////////////////////////////////////////// -->
	
	        <input type="text" name="order_adr1" class="hidden_user_adr1_set" id="sample2_postcode" placeholder="우편번호" style="width:15%; height:30px; margin-top: 10px;">
	        <input type="button" onclick="sample2_execDaumPostcode()" value="주소 찾기" style="width:15%; height:30px; margin-top: 10px; padding: 0px;"><br>
	        <input type="text" name="order_adr2" class="hidden_user_adr2_set" id="sample2_address" placeholder="주소" style="width:30%; height:30px; margin-top: 10px;"><br>
	        <input type="text" name="order_adr3" class="hidden_user_adr3_set" id="sample2_detailAddress" placeholder="상세주소" style="width:30%; height:30px; margin-top: 10px;">
	        <input type="text" name="order_adr4" class="hidden_user_adr4_set" id="sample2_extraAddress" placeholder="참고항목" style="width:20%; height:30px; margin-top: 10px;">
	
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
	
	        <!-- ///////////////////////////////////////////////////////////////////////// -->
	        <!-- ///////////////////////////////////////////////////////////////////////// -->
	      </div>
	      <div class="section_con">
	        <h4 style="font-weight: lighter;">배송메모</h4>
	        <input type="text" name="order_memo" placeholder="배송메모를 입력해 주세요." style="width:95%; height:30px; margin-top: 10px;">
	      </div>
	    </div>
	    <div class="section2">
	      <div class="section_con">
	        <h4>최종 결제금액</h4>
          	<input type="hidden" name="order_price" value="134">
	        <table class="table">
	          <!-- th -->
	          <tr>
	            <td>상품가격</td>
	            <td><span id="totalPriceAmount"></span>원</td>
	          </tr>
	          <tr>
	            <td>할인율</td>
	            <td>
	                <a href="#" class="popper" data-popbox="pop1"> <!-- 이거추가하면 rankSystem 툴팁 적용됨 -->
					<jsp:include page="../main/rankSystem.jsp" />  <!-- 이거추가하면 rankSystem 툴팁 적용됨 -->
						<span id="discountRate">
			           		<c:if test="${user.user_score < '100000'}">
						    	10
						    </c:if>
						    
						    <c:if test="${user.user_score >= '100000' && user.user_score < '200000'}">
						    	15
						    </c:if>
						    
						    <c:if test="${user.user_score >= '200000' && user.user_score < '300000' }">
						    	20
						    </c:if>
						    
						    <c:if test="${user.user_score >= '300000' }">
						    	25
						    </c:if>						    
					    </span>%
				    </a>
	            </td>
	          </tr>
	          <tr>
	            <td>배송비</td>
	            <td>무료</td>
	          </tr>
	          <tr>
	            <td style="border-top: 1px solid rgb(238, 238, 238);">총 결제금액</td>
	            <td style="border-top: 1px solid rgb(238, 238, 238);" id="totalPaymentAmount"></td>
	          </tr>
	      
	        </table>
	      </div>
	      <div class="section_con">결제방법</div>
	      <div class="section_con">
	        <div style="font-size: 14px; margin-top: 10px; font-weight: bold;"><input type="checkbox" name="sameInfo" value=""> 전체 동의</div>
	        <div style="font-size: 14px; margin-top: 10px;"> └ <input type="checkbox" name="sameInfo" value=""> 구매조건 확인 및 결제진행에 동의</div>
	      </div>
	      <div class="section_con" style="height: 60px; padding: 0px;">
	      	<input type="submit" value="결제하기" id="totalOrderButton" style="width: 100%; height: 100%; background-color: rgb(70, 70, 70); 
	          border: 1px solid rgb(70, 70, 70); color:white; font-size: 20px;" onclick="alert('결제되었습니다.')"/>
	      </div>

	    </div>
	  </div>
  </form>
  
  <script> 
	window.onload = function() {
		/* 상품가격 더하는 스크립트 */
		var arr = document.getElementsByClassName("order_price");

		var sum = 0;
		for( var i = 0; i < arr.length; i++ )
		{ 
			var innerText = arr[i].innerText;
			sum = sum + Number( innerText );
		}

		console.log("sum:" + sum);
		document.getElementById('totalPriceAmount').innerText = sum;

		/* 상품가격에서 할인율 적용해서 나오는 총 결제금액 구하는 스크립트 */
		var totalPriceAmount = document.getElementById("totalPriceAmount").innerText;
		var discountRate = document.getElementById("discountRate").innerText;

		var totalPaymentAmount = 0;
		totalPaymentAmount = Number( totalPriceAmount ) - (Number( totalPriceAmount ) * Number ( discountRate ) * 0.01);

		console.log("totalPriceAmount:" + totalPriceAmount);
		console.log("discountRate:" + discountRate);
		console.log("totalPaymentAmount:" + totalPaymentAmount);
		document.getElementById('totalPaymentAmount').innerText = totalPaymentAmount + '원';	
	};
  </script>
  
  
<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />
  
</body>
</html>