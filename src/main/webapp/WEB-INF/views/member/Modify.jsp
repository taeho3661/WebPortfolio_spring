<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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
      font-family: 'Noto Sans JP', sans-serif; /* ��Ͽ� �����°�. */
      list-style: none;   /* ����������. */
      text-decoration: none; /* ���̺� ���� */
      border-collapse: collapse ;
      padding:0px;
      color:black;
      margin-top: 15px;
      
    }


    .joinheader{
      margin: 46px 0 9px;
      color: #4e4748;
      font-size: 18px;
      
    }
    .join{
      font-size: 11px;
      margin: 0 auto;
      
      width: 1280px;
      height: auto;
      
    }
    .main{
      display: flex;
      margin-left: 15px;
      margin-top: 10px;
    }
    .header{
      display: flex;
      overflow: hidden;
      padding: 10px 10px 10px 90px;
      border-top: 1px solid #757575;
      border-bottom: 1px solid #e7e7e7;
      margin-bottom: 20px;
      font-size: 16px;
      
    }
    .myInfo{
      padding: 8px 0 8px 15px;
      border-left: 1px solid #e7e7e7;
      min-height: 54px;
    }
    .myThumb {
    float: left;
    margin-left: -80px;
    
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
    .join_ID_Check{
      display: inline-block;
      text-align: center;
      color: #fff;
      cursor: pointer;
      border: 1px solid #fff;
      padding: 0 8px;
      height: 22px;
      line-height: 22px;
      font-size: 7px;

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
    .phonetext{
      width: 60px;
      height: 24px;
      margin: 0 4px;
    }
    #phone1{
      margin-left: 15px;
      
      width: 60px;
      height: 24px;
    }
    .email{
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
    .lastbutton_member2{
      display: flex;
      justify-content: flex-end;
      
    }
    .lastbutton_member2 > input{
      margin: 7px 7px 7px 7px;
      background-color: darkgrey;
      
      
    }



    
  
  </style>

  

<jsp:include page="../main/header.jsp" />


<div class= "wrap">
    
  
  
  <form action="aaa.jsp" method="POST">

    <div class="join">
      <div class="header">
        <p class="myThumb"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/img_member_default.gif" alt="�Ϲ�ȸ��" onerror="this.src='http://img.echosting.cafe24.com/skin/base_ko_KR/member/img_member_default.gif';"></p>
          <div class="myInfo">
                <p class="">���� ���θ��� �̿��� �ּż� �����մϴ�. <strong class="name"><span>������</span></strong> ���� <strong class="group">[�Ϲ�ȸ��]</strong> ȸ���̽ʴϴ�.</p>
          </div>
      </div>
      <div class="joinheader">�ʼ� �Է� �׸��Դϴ�</div>
      <div class="join_ID main Line ">
        <div class="join_textside">���̵� </div>
        <input type="text" class="form-control textbox">
        <a href="#none" title="��â ����" onclick="checkIdLayer('/member/check_id.html')" class="btn btn-secondary btn-lg join_ID_Check ">���̵� �ߺ�üũ</a>
      </div>
      <div class="join_Password main Line">
        <div class="join_textside">�����ȣ</div>
        <input type="text" class="form-control textbox" >
    
      </div>
      <div class="join_Passwordcheck main Line">
        <div class="join_textside">�����ȣ Ȯ��</div>
        <input type="text" class="form-control textbox" >
      </div>

      <div class="join_Passwordcheck main Line">
        <div class="join_textside">�̸�</div>
        <input type="text" class="form-control textbox" >
        
      </div>

      <div class="main Line">
        <div class="join_textside_Address ">�ּ�</div>
        <div>
          <div class="main ">
            <input type="text" class="sample2_address" placeholder="�����ȣ" >
            <input type="button" class="sample2_button" onclick="sample2_execDaumPostcode()" value="�����ȣ ã��" ><br>
          </div>
          <input type="text" class="sample2_address2" placeholder="�ּ�" ><br>
          <input type="text" class="sample2_address2" placeholder="���ּ�" >
          <!-- iOS������ position:fixed ���װ� ����, �����ϴ� ����Ʈ�� �°� position:absolute ���� �̿��Ͽ� top,left�� ���� �ʿ� -->
          <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
          <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
          </div>
          <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
          <script>
              // �����ȣ ã�� ȭ���� ���� element
              var element_layer = document.getElementById('layer');
              function closeDaumPostcode() {
                  // iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
                  element_layer.style.display = 'none';
              }
              function sample2_execDaumPostcode() {
                  new daum.Postcode({
                      oncomplete: function(data) {
                          // �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
                          // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                          // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                          var addr = ''; // �ּ� ����
                          var extraAddr = ''; // �����׸� ����
                          //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                          if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                              addr = data.roadAddress;
                          } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                              addr = data.jibunAddress;
                          }
                          // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                          if(data.userSelectedType === 'R'){
                              // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                              // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                              if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                                  extraAddr += data.bname;
                              }
                              // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                              if(data.buildingName !== '' && data.apartment === 'Y'){
                                  extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                              }
                              // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                              if(extraAddr !== ''){
                                  extraAddr = ' (' + extraAddr + ')';
                              }
                              // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                              document.getElementById("sample2_extraAddress").value = extraAddr;
                          } else {
                              document.getElementById("sample2_extraAddress").value = '';
                          }
                          // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                          document.getElementById('sample2_postcode').value = data.zonecode;
                          document.getElementById("sample2_address").value = addr;
                          // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                          document.getElementById("sample2_detailAddress").focus();
                          // iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
                          // (autoClose:false ����� �̿��Ѵٸ�, �Ʒ� �ڵ带 �����ؾ� ȭ�鿡�� ������� �ʴ´�.)
                          element_layer.style.display = 'none';
                      },
                      width : '100%',
                      height : '100%',
                      maxSuggestItems : 5
                  }).embed(element_layer);
                  // iframe�� ���� element�� ���̰� �Ѵ�.
                  element_layer.style.display = 'block';
                  // iframe�� ���� element�� ��ġ�� ȭ���� ����� �̵���Ų��.
                  initLayerPosition();
              }
              // �������� ũ�� ���濡 ���� ���̾ ����� �̵���Ű���� �ϽǶ�����
              // resize�̺�Ʈ��, orientationchange�̺�Ʈ�� �̿��Ͽ� ���� ����ɶ����� �Ʒ� �Լ��� ���� ���� �ֽðų�,
              // ���� element_layer�� top,left���� ������ �ֽø� �˴ϴ�.
              function initLayerPosition(){
                  var width = 300; //�����ȣ���񽺰� �� element�� width
                  var height = 400; //�����ȣ���񽺰� �� element�� height
                  var borderWidth = 5; //���ÿ��� ����ϴ� border�� �β�
                  // ������ ������ ������ ���� element�� �ִ´�.
                  element_layer.style.width = width + 'px';
                  element_layer.style.height = height + 'px';
                  element_layer.style.border = borderWidth + 'px solid';
                  // ����Ǵ� ������ ȭ�� �ʺ�� ���� ���� �����ͼ� �߾ӿ� �� �� �ֵ��� ��ġ�� ����Ѵ�.
                  element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
                  element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
              }
          </script>
        </div>

    

      </div>
      <div class="main Line">
        <div class="join_textside">�޴���ȭ</div>
        <div>
          <select id="phone1" name="phone[]" fw-filter="isNumber&amp;isFill&amp;isNumber" fw-label="�Ϲ���ȭ" fw-alone="N" fw-msg="">
            <option value="02">02</option>
            <option value="031">031</option>
            <option value="032">032</option>
            <option value="033">033</option>
            <option value="041">041</option>
            <option value="042">042</option>
            <option value="043">043</option>
            <option value="044">044</option>
            <option value="051">051</option>
            <option value="052">052</option>
            <option value="053">053</option>
            <option value="054">054</option>
            <option value="055">055</option>
            <option value="061">061</option>
            <option value="062">062</option>
            <option value="063">063</option>
            <option value="064">064</option>
            <option value="0502">0502</option>
            <option value="0503">0503</option>
            <option value="0504">0504</option>
            <option value="0505">0505</option>
            <option value="0506">0506</option>
            <option value="0507">0507</option>
            <option value="070">070</option>
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
            <option value="0508">0508</option>
            </select>
        </div>
        <input type="text" class="form-control textbox phonetext" >
        <input type="text" class="form-control textbox phonetext" >


      </div>

      <div class="main Line">
        <div class="join_textside">�̸���</div>
        <div class="mb-3">
          <input type="email" class="form-control email" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
      </div>
      


      
      

    
    
  

    <div class="lastbutton">
      <input type="submit" class="btn btn-secondary btn-lg lastbutton_member" value="ȸ������ ����"></input>
      <a class="btn btn-secondary btn-lg" a href="main.jsp">���</a>
      <div class="lastbutton_member2">
        <input type="submit" class="btn btn-secondary btn-lg " value="ȸ��Ż��"></input>
      </div>
    </div>


    </div> <!-- join main �κ�-->
</form>
</div> <!-- wrap-->
 <jsp:include page="../main/footer.jsp" />
</body>
</html>