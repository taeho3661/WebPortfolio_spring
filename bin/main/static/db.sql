-- 관리자모드부터 만들어보자
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--회원데이터
drop table tb_user;
create table tb_user(
	user_no      	number(4) primary key,
    user_id			varchar2(20),
    user_pw       	varchar2(20),
    user_nm       	varchar2(20),
    post     		number(20),	-- readonly
    adr1    		varchar2(100), -- readonly
    adr2  			varchar2(100),
    phone1     		varchar2(20),
    phone2       	number(20),
    phone3          number(20),
    email      		varchar2(100),
    email_yn       	number(1), -- 0:비수신 1:수신
    score          	number(20),
    rank          	number(20),
    login_type      number(1), -- 0:유저 1:관리자
    del_yn          number(1)  -- 0:삭제o 1:삭제x
);

drop sequence tb_user_seq;
create sequence tb_user_seq;

-- 샘플 --
insert into tb_user(user_no, user_id, user_pw, user_nm, 
post, adr1, adr2, phone1, phone2, phone3, 
email, email_yn, score, rank, login_type, del_yn) 
values (tb_user_seq.nextval, '아이디1', '비밀번호1', '이름1', 
123, '기본주소1', '상세주소1', '010', 1111, 1111, 
'메일1@gmail.com', 1, 0, 0, 0, 1);
insert into tb_user(user_no, user_id, user_pw, user_nm, 
post, adr1, adr2, phone1, phone2, phone3, 
email, email_yn, score, rank, login_type, del_yn) 
values (tb_user_seq.nextval, '아이디2', '비밀번호2', '이름2', 
123, '기본주소2', '상세주소2', '010', 1111, 2222, 
'메일2@gmail.com', 1, 0, 0, 0, 1);
insert into tb_user(user_no, user_id, user_pw, user_nm, 
post, adr1, adr2, phone1, phone2, phone3, 
email, email_yn, score, rank, login_type, del_yn) 
values (tb_user_seq.nextval, '아이디3', '비밀번호3', '이름3', 
123, '기본주소3', '상세주소3', '010', 1111, 3333, 
'메일3@gmail.com', 1, 0, 0, 0, 1);
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--상품데이터
drop table  tb_item;
create table  tb_item(
	item_id      	number(4) primary key,
    item_nm			varchar2(40),
    price       	number(20),
    stock       	number(20),
    item_img  		varchar2(200),    
    de_fee    		number(20),
    con_img     	varchar2(200)
);

drop sequence tb_item_seq;
create sequence tb_item_seq;

--샘플--
insert into tb_item(item_id, item_nm, price, stock, item_img, de_fee, con_img) 
values (tb_item_seq.nextval, '샌드위치', 50000, 100, 'https://ifh.cc/g/SkXbo6.jpg', 3000, 'https://ifh.cc/g/xt20xS.jpg');
insert into tb_item(item_id, item_nm, price, stock, item_img, de_fee, con_img) 
values (tb_item_seq.nextval, '아이스크림와플', 50000, 100, 'https://ifh.cc/g/uPjOSq.jpg', 3000, null);

-- 테스트 코드
select * from tb_item;
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
-- 게시판 DB
drop table  tb_board;
create table  tb_board(
	board_no     	number(4) primary key,
    board_kind		number(4),  -- 1:상품후기 2:상품문의
    board_nm        varchar2(40),
    board_con       varchar2(200),
    writer  	    varchar2(20),    
    write_date    	date default sysdate,
    hit     	    number(4) default 0,
    secret_yn     	varchar2(1), -- 0:비밀 1:공개
    item_id     	number(4)
);

drop sequence tb_board_seq;
create sequence tb_board_seq;

select * from tb_board;

-- -- -- 샘플 -- -- --
insert into tb_board(board_no, board_kind, board_nm, board_con, writer, write_date, secret_yn, item_id)
values (tb_board_seq.nextval, 2, '샌드위치 맛있나요?', '샌드위치 얼마나 맛있나요?', '아이디1', sysdate, 1, 1);
insert into tb_board(board_no, board_kind, board_nm, board_con, writer, write_date, secret_yn, item_id)
values (tb_board_seq.nextval, 2, '문의입니다.', '테스트~~~~~', '아이디1', sysdate, 1, 1);
insert into tb_board(board_no, board_kind, board_nm, board_con, writer, write_date, secret_yn, item_id)
values (tb_board_seq.nextval, 1, '후기입니다.', '후기내용입니다~', '아이디2', sysdate, 1, 1);


--테스트
select i.item_nm, q.board_nm, q.writer, q.write_date from tb_item i, tb_board q
where i.item_id = q.item_id;

