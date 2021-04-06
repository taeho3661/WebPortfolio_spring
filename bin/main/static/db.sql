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
values (tb_user_seq.nextval, '아이디1', '비밀번호1', '이름1', 
123, '주소1', '주소2', '주소3', '주소4', '01011112222', 
'메일1@gmail.com', 1, 0, 0, 0, 1);
insert into tb_user(user_no, user_id, user_pw, user_name, 
user_post, user_adr1, user_adr2, user_adr3, user_adr4, user_phone, 
user_email, user_email_yn, user_score, user_rank, user_login_type, user_del_yn) 
values (tb_user_seq.nextval, '아이디2', '비밀번호2', '이름2', 
123, '주소1', '주소2', '주소3', '주소4', '01011112222', 
'메일2@gmail.com', 1, 0, 0, 0, 1);
insert into tb_user(user_no, user_id, user_pw, user_name, 
user_post, user_adr1, user_adr2, user_adr3, user_adr4, user_phone, 
user_email, user_email_yn, user_score, user_rank, user_login_type, user_del_yn) 
values (tb_user_seq.nextval, '아이디3', '비밀번호3', '이름3', 
123, '주소1', '주소2', '주소3', '주소4', '01011112222', 
'메일3@gmail.com', 1, 0, 0, 0, 1);
insert into tb_user(user_no, user_id, user_pw, user_name, 
user_post, user_adr1, user_adr2, user_adr3, user_adr4, user_phone, 
user_email, user_email_yn, user_score, user_rank, user_login_type, user_del_yn) 
values (tb_user_seq.nextval, 'admin', 'admin1234', '관리자', 
0, '주소1', '주소2', '주소3', '주소4', '01000000000', 
'관리자@gmail.com', 1, 0, 0, 1, 1);
---- 테스트
select * from tb_user;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--상품데이터
drop table  tb_item;
create table  tb_item(
	item_no      	number(4) primary key,
    item_type     	varchar2(20),
    item_name		varchar2(40),
    item_price     	number(20),
    item_stock     	number(20),
    item_img  		varchar2(100),    
    item_info_img	varchar2(100)
);

drop sequence tb_item_seq;
create sequence tb_item_seq;

--샘플--
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, '디저트', '샌드위치', 50000, 100, 'https://ifh.cc/g/SkXbo6.jpg', 'https://ifh.cc/g/xt20xS.jpg');
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, '디저트', '아이스크림와플', 10000, 80, 'https://ifh.cc/g/uPjOSq.jpg', null);
insert into tb_item(item_no, item_type, item_name, item_price, item_stock, item_img, item_info_img) 
values (tb_item_seq.nextval, '음료', '자몽스무디', 5000, 1000, 'https://ifh.cc/g/WgRO73.jpg', null);


-- 테스트 코드
select * from tb_item;
  
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
values (tb_order_seq.nextval, 1, 1, 10, 1, sysdate,
null, null, null, null, 10000, '주문메모!');
insert into tb_order(order_no, user_no, item_no, order_count, order_state, order_date, 
order_adr1, order_adr2, order_adr3, order_adr4, order_price, order_memo) 
values (tb_order_seq.nextval, 1, 2, 10, 1, sysdate,
null, null, null, null, 10000, '빠른배송 부탁드려요~');
insert into tb_order(order_no, user_no, item_no, order_count, order_state, order_date, 
order_adr1, order_adr2, order_adr3, order_adr4, order_price, order_memo) 
values (tb_order_seq.nextval, 2, 1, 10, 1, sysdate,
null, null, null, null, 10000, '감사합니다');

--테스트
select * from tb_order;

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
    item_no     	    number(4)
);

drop sequence tb_board_seq;
create sequence tb_board_seq;

select * from tb_board;

-- -- -- 샘플 -- -- --
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no)
values (tb_board_seq.nextval, 2, '샌드위치 맛있나요?', '샌드위치 얼마나 맛있나요?', 
'아이디1', sysdate, 1, 1);
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no)
values (tb_board_seq.nextval, 2, '문의입니다.', '테스트~~~~~', 
'아이디1', sysdate, 1, 1);
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no)
values (tb_board_seq.nextval, 1, '후기입니다.', '후기내용입니다~', 
'아이디2', sysdate, 1, 1);
insert into tb_board(board_no, board_kind, board_name, board_content, 
board_writer, board_write_date, board_secret_yn, item_no)
values (tb_board_seq.nextval, 1, '후기입니다22.', '후기내용입니다~22', 
'아이디2', sysdate, 1, 2);


--테스트
select i.item_name, b.board_name, b.board_writer, b.board_write_date, b.board_no
from tb_item i, tb_board b
where i.item_no = b.item_no;

select TO_CHAR(write_date,'YYYYMMDD') from tb_board;

select i.item_nm, q.board_nm, q.writer, TO_CHAR(q.write_date,'YYYYMMDD'), q.board_no from tb_item i, tb_board q where i.item_id = q.item_id;
select i.item_nm, q.board_nm, q.writer, TO_CHAR(q.write_date,'YYYY/MM/DD'), q.board_no from tb_item i, tb_board q where i.item_id = q.item_id;
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
--카트
drop table  tb_cart;
create table  tb_cart(
	cart_id      	number(4) primary key,
    user_id			varchar2(40),
    item_id       	number(20),
    amount       	number(20),
    bil_id  		number(20)
);

drop sequence tb_cart_seq;
create sequence tb_cart_seq;

--샘플--
insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
values (tb_cart_seq.nextval, '아이디1', 1, 10, 1);
insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
values (tb_cart_seq.nextval, '아이디1', 1, 10, 1);
insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
values (tb_cart_seq.nextval, '아이디2', 2, 30, 2);
insert into tb_cart(cart_id, user_id, item_id, amount, bil_id) 
values (tb_cart_seq.nextval, '아이디3', 1, 10, 3);

-- 테스트 코드
select * from tb_cart;

-- todo:: 여긴 아직 수정필요
select i.item_img
       , i.item_nm /* 아이템명 */
       , c.amount, i.de_fee, i.price
from tb_cart c
, tb_user u
, tb_item i
where c.user_id = u.user_id
  and c.item_id = i.item_id;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- 주문목록만들기
drop table  tb_bil;
create table  tb_bil(
	bil_id      	number(4) primary key,
    user_id			varchar2(40),
    order_state     varchar2(40),
    receive_nm      varchar2(40),
    receive_tel  	number(20),    
    post    		number(20),
    adr1     	    varchar2(100),
    adr2     	    varchar2(100),
    ship_memo     	varchar2(200),
    total_price     number(20),
    order_date      date default sysdate
);

drop sequence tb_bil_seq;
create sequence tb_bil_seq;

-- -- -- 샘플 -- -- --
insert into tb_bil(bil_id, user_id, order_state, receive_nm, receive_tel, post, adr1, adr2, ship_memo, total_price, order_date)
values (tb_bil_seq.nextval, '아이디1', 1, '수령인', 01099990000, null, null, null, null, null, sysdate);
insert into tb_bil(bil_id, user_id, order_state, receive_nm, receive_tel, post, adr1, adr2, ship_memo, total_price, order_date)
values (tb_bil_seq.nextval, '아이디2', 1, '수령인', 01099991111, null, null, null, null, null, sysdate);
insert into tb_bil(bil_id, user_id, order_state, receive_nm, receive_tel, post, adr1, adr2, ship_memo, total_price, order_date)
values (tb_bil_seq.nextval, '아이디3', 1, '수령인', 01099992222, null, null, null, null, null, sysdate);

-- 테스트 코드
select * from tb_bil;

select b.bil_id
, b.order_date
, b.user_id
, i.item_nm
, b.order_state
from tb_bil b
, tb_cart c
, tb_item i
where b.bil_id = c.bil_id
  and c.item_id = i.item_id;
  
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

