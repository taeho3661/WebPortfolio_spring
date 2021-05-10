-- 관리자모드부터 만들어보자
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--회원데이터
drop table tb_user;
create table tb_user(
	user_no      	number(4) primary key,
    user_id			varchar2(20),
    user_pw       	varchar2(20),
    user_name      	varchar2(20),
    user_post 		number(20),	-- readonly
    user_adr1 		varchar2(100), -- readonly
    user_adr2   	varchar2(100),
    user_adr3   	varchar2(100),
    user_adr4      	varchar2(100),
    user_phone      varchar2(20),
    user_email      varchar2(100),
    user_email_yn   number(1), -- 0:비수신 1:수신
    user_score      number(20),
    user_rank       number(20),
    user_login_type number(1), -- 0:유저 1:관리자
    user_del_yn     number(1)  -- 0:삭제o 1:삭제x
);

drop sequence tb_user_seq;
create sequence tb_user_seq;

-- 샘플 --
insert into tb_user(user_no, user_id, user_pw, user_name, 
user_post, user_adr1, user_adr2, user_adr3, user_adr4, user_phone, 
user_email, user_email_yn, user_score, user_rank, user_login_type, user_del_yn) 
values (tb_user_seq.nextval, 'admin', 'admin1234', '관리자', 
null, 'address1', 'address2', 'address3', 'address4', '01011112222', 
'admin@gmail.com', 1, 0, 0, 1, 1);
insert into tb_user(user_no, user_id, user_pw, user_name, 
user_post, user_adr1, user_adr2, user_adr3, user_adr4, user_phone, 
user_email, user_email_yn, user_score, user_rank, user_login_type, user_del_yn) 
values (tb_user_seq.nextval, 'hong', 'hong1234', '홍길동', 
111, '주소1', '주소2', '주소3', '주소4', '01033330000', 
'hong@gmail.com', 1, 0, 0, 0, 1);
insert into tb_user(user_no, user_id, user_pw, user_name, 
user_post, user_adr1, user_adr2, user_adr3, user_adr4, user_phone, 
user_email, user_email_yn, user_score, user_rank, user_login_type, user_del_yn) 
values (tb_user_seq.nextval, 'test', 'test1234', '테스트아이디', 
111, '주소1', '주소2', '주소3', '주소4', '01033330000', 
'test@gmail.com', 1, 0, 0, 0, 1);
insert into tb_user(user_no, user_id, user_pw, user_name, 
user_post, user_adr1, user_adr2, user_adr3, user_adr4, user_phone, 
user_email, user_email_yn, user_score, user_rank, user_login_type, user_del_yn) 
values (tb_user_seq.nextval, 'taeho', 'taeho1234', '태호', 
111, '주소1', '주소2', '주소3', '주소4', '01033330000', 
'taeho@gmail.com', 1, 0, 0, 0, 1);
---- 테스트
select * from tb_user;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--상품데이터
drop table  tb_item;
create table  tb_item(
	item_no      	number(4) primary key,
    item_type     	varchar2(20),
    item_name		varchar2(80),
    item_price     	number(20),
    item_stock     	number(20),
    item_img  		varchar2(100),    
    item_info_img	varchar2(100)
);

drop sequence tb_item_seq;
create sequence tb_item_seq;

--샘플--
--베이글--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'bagel', '블루베리 베이글 110g X 6ea', 8000, 100, 'BG_blue.png', 'BG_blue_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'bagel', '치즈 베이글 110g X 6ea', 8500, 100, 'BG_cheese.png', 'BG_cheese_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'bagel', '어니언 베이글 110g X 6ea', 8000, 100, 'BG_onion.png', 'BG_onion_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'bagel', '플레인 베이글 110gX 6ea', 7500, 100, 'BG_plain.png', 'BG_plain_info.png');
--청--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'cheong', '[꽃샘] 꿀 대추차 1kg', 6600, 100, 'C_deachu.png', 'C_deachu_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'cheong', '[꽃샘] 꿀 레드자몽차 1kg', 7700, 100, 'C_jamong.png', 'C_jamong_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'cheong', '[꽃샘] 꿀 레몬차 1kg', 6900, 100, 'C_lemon.png', 'C_lemon_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'cheong', '[꽃샘] 꿀 매실차 1kg', 6900, 100, 'C_mesil.png', 'C_mesil_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'cheong', '[꽃샘] 꿀 모과차 1kg', 6600, 100, 'C_moga.png', 'C_moga_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'cheong', '[꽃샘] 꿀 오미자차 1kg', 7700, 100, 'C_omiza.png', 'C_omiza_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'cheong', '[꽃샘] 꿀 유자차 1kg', 6500, 100, 'C_uza.png', 'C_uza_info.png');
--커피--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'coffee', '마노 아프리카 마일드 0.9g 100입', 10000, 100, 'CF_africa.png', 'CF_africa_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, 'coffee', '마노 라틴 아메이카 마일드 0.9g 100입', 12000, 100, 'CF_america.png', 'CF_america_info.png');
--크레이프--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'crepe', '[스페로스페라] 럭키 블루베리 크레이프', 29900, 100, 'Crepe_blue.png', 'Crepe_blue_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'crepe', '[스페로스페라] 럭키 초코 크레이프', 29900, 100, 'Crepe_choco.png', 'Crepe_choco_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'crepe', '[스페로스페라] 럭키 밀크 크레이프', 29900, 100, 'Crepe_milk.png', 'Crepe_milk_info.png');
--머핀--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'muffin', '블루베리 머핀 130g X 12ea', 22500, 100, 'MF_blue.png', 'MF_blue_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'muffin', '치즈 머핀 130g X 12ea', 22500, 100, 'MF_cheese.png', 'MF_cheese_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'muffin', '초코머핀 130g X 12ea', 22500, 100, 'MF_choco.png', 'MF_choco_info.png');
--티--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'tea', '[베티나르디] 얼그레이 (1.5g X 30티백)', 9500, 100, 'Tea_Bettynardiearlgray.png', 'Tea_Bettynardiearlgray_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'tea', '[베티나르디] 그린티 (1.2g X 30티백)', 12900, 100, 'Tea_Bettynardigreen.png', 'Tea_Bettynardigreen_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'tea', '[브리즈] 녹차 티백 (2g X 20티백)', 11900, 100, 'Tea_Brise.png', 'Tea_Brise_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'tea', '[브리즈] 캐모마일 (1g X 20티백)', 8700, 100, 'Tea_Brisechamomile.png', 'Tea_Brisechamomile_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'tea', '[브리즈] 다즐링 (2.5g X 20티백)', 9900, 100, 'Tea_Brisedjl.png', 'Tea_Brisedjl_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'tea', '[브리즈] 진주 자스민 (1.5g X 20티백)', 10900, 100, 'Tea_Brisejasmin.png', 'Tea_Brisejasmin_info.png');
--케이크--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'cake', '버터 크럼블 케이크', 20000, 100, 'Cake_buttercramble.png', 'Cake_buttercramble_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'cake', '다크 초코 스폰지 케이크', 20000, 100, 'Cake_chocosponge.png', 'Cake_chocosponge_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'cake', '초코 카라멜 케이크', 20000, 100, 'Cake_cramel.png', 'Cake_cramel_info.png');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img)
values (tb_item_seq.nextval, 'cake', '초코 헤이즐넛 케이크', 20000, 100, 'Cake_hazelnut.png', 'Cake_hazelnut_info.png');

-- 테스트 코드
select * from tb_item;
select * from tb_item where Item_type = 'coffee';

  commit;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--order : bil이랑 cart 통합해서 다시만든 테이블
drop table  tb_order;
create table  tb_order(
	order_no      	number(4) primary key,
    user_no     	number(4),
    item_no		    number(4),
    order_count     number(20),
    order_state     number(20),
    order_date  	date default sysdate,    
    order_adr1	    varchar2(100),
    order_adr2  	varchar2(100),
    order_adr3  	varchar2(100),
    order_adr4	    varchar2(100),
    order_price	    number(20),
    order_memo	    varchar2(100)
);
drop sequence tb_order_seq;
create sequence tb_order_seq;

insert into tb_order(order_no, user_no, item_no, order_count, order_state, order_date, 
order_adr1, order_adr2, order_adr3, order_adr4, order_price, order_memo) 
values (tb_order_seq.nextval, 2, 1, 10, 2, sysdate,
null, null, null, null, 10000, '주문메모!');
insert into tb_order(order_no, user_no, item_no, order_count, order_state, order_date, 
order_adr1, order_adr2, order_adr3, order_adr4, order_price, order_memo) 
values (tb_order_seq.nextval, 2, 2, 10, 2, sysdate,
null, null, null, null, 10000, '빠른배송 부탁드려요~');
insert into tb_order(order_no, user_no, item_no, order_count, order_state, order_date, 
order_adr1, order_adr2, order_adr3, order_adr4, order_price, order_memo) 
values (tb_order_seq.nextval, 3, 1, 10, 2, sysdate,
null, null, null, null, 10000, '감사합니다');

insert into tb_order(order_no, user_no, item_no, order_count, order_state, order_date, 
order_adr1, order_adr2, order_adr3, order_adr4, order_price, order_memo) 
values (tb_order_seq.nextval, 3, 1, 10, 1, sysdate,
null, null, null, null, 10000, null);

--테스트
select * from tb_order;

-- 이미지 이름 수량 가격
select o.order_no
, i.item_img
, i.item_name
, o.order_count
, o.order_price
from tb_order o
, tb_item i
where o.item_no = i.item_no
  and o.order_state = 1
  and o.user_no = 3;

--주문번호	일자	고객명	상품명	상품상태	비고
select o.order_no
, o.order_date
, u.user_id
, i.item_name
, o.order_state
from tb_order o
, tb_item i
, tb_user u
where o.user_no = u.user_no
  and o.item_no = i.item_no
  order by o.order_no desc;
  
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- 게시판 DB
drop table  tb_board;
create table  tb_board(
	board_no     	    number(4) primary key,
    board_kind		    number(4),  -- 1:상품후기 2:상품문의
    board_name          varchar2(40),
    board_content       varchar2(200),
    board_writer  	    varchar2(20),    
    board_write_date    date default sysdate,
    board_hit     	    number(4) default 0,
    board_secret_yn     varchar2(1), -- 0:비밀 1:공개
    item_no     	    number(4),
    board_reply         varchar2(200)
);

drop sequence tb_board_seq;
create sequence tb_board_seq;

select * from tb_board;

-- -- -- 샘플 -- -- --
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 2, '샌드위치 맛있나요?', '샌드위치 얼마나 맛있나요?', 
'hong', sysdate, 1, 1, null);
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 2, '문의입니다.', '테스트~~~~~', 
'test', sysdate, 1, 1, null);


--수정
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '케이크가', '완전 맛있어요~', 
'최진솔', sysdate, 1, 26, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '케이크가', '완전 달아요~', 
'홍길동', sysdate, 1, 26, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '케이크', '부드러워요', 
'홍길동', sysdate, 1, 26, null);





insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, 'tea 가', '아주깔끔해요~', 
'황현영', sysdate, 1, 20, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '차가', '향이 좋아요', 
'홍길동', sysdate, 1, 20, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '차','색이 진해요', 
'홍길동', sysdate, 1, 21, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '차', '색이 이뻐요', 
'홍길동', sysdate, 1, 20, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '차', '건강해지는 기분이에요', 
'홍길동', sysdate, 1, 20, null);

-- 추가
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '머핀이', '너무 달아요', 
'이태호', sysdate, 1, 17, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '머핀이', '너무맛있어요 ', 
'홍길동', sysdate, 1, 17, null);


insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '크레이프가', '너무맛있어요', 
'이관우', sysdate, 1, 14, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '크레이프', '달아요', 
'홍길동', sysdate, 1, 14, null);


insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '베이글이', '부드러워요', 
'김재현', sysdate, 1, 1, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '베이글이', '너무맛있어요', 
'홍길동', sysdate, 1, 1, null);

insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 1, '베이글이', '달아요', 
'홍길동', sysdate, 1, 1, null);






-- 공지사항 추가
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 3, '[설날배송공지] 설 배송 안내', '테스트~~~~~', 
'관리자', sysdate, 1, 1, null);
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no, board_reply)
values (tb_board_seq.nextval, 3, '[가격변동] 일부상품 변동', '테스트~~~~~', 
'관리자', sysdate, 1, 1, null);



--테스트
select i.item_name, b.board_name, b.board_writer, b.board_write_date, b.board_no
from tb_item i, tb_board b
where i.item_no = b.item_no;

---select TO_CHAR(write_date,'YYYYMMDD') from tb_board;

--select i.item_nm, q.board_nm, q.writer, TO_CHAR(q.write_date,'YYYYMMDD'), q.board_no from tb_item i, tb_board q where i.item_id = q.item_id;
--select i.item_nm, q.board_nm, q.writer, TO_CHAR(q.write_date,'YYYY/MM/DD'), q.board_no from tb_item i, tb_board q where i.item_id = q.item_id;
----------
----------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----카트
--drop table  tb_cart;
--create table  tb_cart(
--	cart_id      	number(4) primary key,
--    user_id			varchar2(40),
--    item_id       	number(20),
--    amount       	number(20),
--    bil_id  		number(20)
--);
--
--drop sequence tb_cart_seq;
--create sequence tb_cart_seq;
--
----샘플--
--insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
--values (tb_cart_seq.nextval, '아이디1', 1, 10, 1);
--insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
--values (tb_cart_seq.nextval, '아이디1', 1, 10, 1);
--insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
--values (tb_cart_seq.nextval, '아이디2', 2, 30, 2);
--insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
--values (tb_cart_seq.nextval, '아이디3', 1, 10, 3);
--
---- 테스트 코드
--select * from tb_cart;
--
---- todo:: 여긴 아직 수정필요
--select i.item_img
--       , i.item_nm /* 아이템명 */
--       , c.amount, i.de_fee, i.price
--from tb_cart c
--, tb_user u
--, tb_item i
--where c.user_id = u.user_id
--  and c.item_id = i.item_id;
--
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
---- 주문목록만들기
--drop table  tb_bil;
--create table  tb_bil(
--	bil_id      	number(4) primary key,
--    user_id			varchar2(40),
--    order_state     varchar2(40),
--    receive_nm      varchar2(40),
--    receive_tel  	number(20),    
--    post    		number(20),
--    adr1     	    varchar2(100),
--    adr2     	    varchar2(100),
--    ship_memo     	varchar2(200),
--    total_price     number(20),
--    order_date      date default sysdate
--);
--
--drop sequence tb_bil_seq;
--create sequence tb_bil_seq;
--
---- -- -- 샘플 -- -- --
--insert into tb_bil(bil_id, user_id, order_state, receive_nm, receive_tel, post, adr1, adr2, ship_memo, total_price, order_date)
--values (tb_bil_seq.nextval, '아이디1', 1, '수령인', 01099990000, null, null, null, null, null, sysdate);
--insert into tb_bil(bil_id, user_id, order_state, receive_nm, receive_tel, post, adr1, adr2, ship_memo, total_price, order_date)
--values (tb_bil_seq.nextval, '아이디2', 1, '수령인', 01099991111, null, null, null, null, null, sysdate);
--insert into tb_bil(bil_id, user_id, order_state, receive_nm, receive_tel, post, adr1, adr2, ship_memo, total_price, order_date)
--values (tb_bil_seq.nextval, '아이디3', 1, '수령인', 01099992222, null, null, null, null, null, sysdate);
--
---- 테스트 코드
--select * from tb_bil;
--
--select b.bil_id
--, b.order_date
--, b.user_id
--, i.item_nm
--, b.order_state
--from tb_bil b
--, tb_cart c
--, tb_item i
--where b.bil_id = c.bil_id
--  and c.item_id = i.item_id;
  
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

