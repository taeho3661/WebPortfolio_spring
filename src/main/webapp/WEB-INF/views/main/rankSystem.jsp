<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
.popbox {
    display: none;
    position: absolute;
    z-index: 99999;
    width: 450px;
    padding: 10px;
    background: #F3F5EDC3;
    color: #000000;
    border: 1px solid #4D4F53;
    margin: 0px;
    -webkit-box-shadow: 0px 0px 5px 0px rgba(164, 164, 164, 1);
    box-shadow: 0px 0px 5px 0px rgba(164, 164, 164, 1);
    text-align: left;
}
.popbox h2
{
    background-color: #4D4F53;
    color:  #E3E5DD;
    font-size: 20px;
    display: block;
    width: 105%;
    margin: -10px 0px 8px -10px;
    padding: 5px 10px;
}
.popbox p
{
    color:  #736B4E;
    font-size : 15px;
}
.popbox b
{
	color:  gray;
	font-size : 20px;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
<script>
$(function() {
    var moveLeft = 0;
    var moveDown = 0;
    $('a.popper').hover(function(e) {

        var target = '#' + ($(this).attr('data-popbox'));

        $(target).show();
        moveLeft = $(this).outerWidth();
        moveDown = ($(target).outerHeight() / 2);
    }, function() {
        var target = '#' + ($(this).attr('data-popbox'));
        $(target).hide();
    });

    $('a.popper').mousemove(function(e) {
        var target = '#' + ($(this).attr('data-popbox'));

        leftD = e.pageX + parseInt(moveLeft);
        maxRight = leftD + $(target).outerWidth();
        windowLeft = $(window).width() - 40;
        windowRight = 0;
        maxLeft = e.pageX - (parseInt(moveLeft) + $(target).outerWidth() + 20);

        if(maxRight > windowLeft && maxLeft > windowRight)
        {
            leftD = maxLeft;
        }

        topD = e.pageY - parseInt(moveDown);
        maxBottom = parseInt(e.pageY + parseInt(moveDown) + 20);
        windowBottom = parseInt(parseInt($(document).scrollTop()) + parseInt($(window).height()));
        maxTop = topD;
        windowTop = parseInt($(document).scrollTop());
        if(maxBottom > windowBottom)
        {
            topD = windowBottom - $(target).outerHeight() - 20;
        } else if(maxTop < windowTop){
            topD = windowTop + 20;
        }

        $(target).css('top', topD).css('left', leftD);

    });
});
</script>
<body>
<div id="pop1" class="popbox">
    <h2>회원등급에 따른 할인혜택 정보</h2>
    <p>다이아 : <b>할인율 25%</b> 총 누적금 300,000이상</p>
    <p>골&nbsp;&nbsp;&nbsp;&nbsp;드 : <b>할인율 20%</b> 총 누적금 200,000이상 300,000미만</p>
    <p>실&nbsp;&nbsp;&nbsp;&nbsp;버 : <b>할인율 15%</b> 총 누적금 100,000이상 200,000미만</p>
    <p>브론즈 : <b>할인율 10%</b> 총 누적금 100,000미만 </p>
</div>
</body>
</html>