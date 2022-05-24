create table board(seq number primary key,
title varchar2(100) not null,
content varchar2(800) not null,
writer varchar2(20),
regdate date,
updatedate date,
views number
);


select * from board;
select * from board where seq=2;

insert into board values(1, '제목 test1', '내용 test1', 'admin', sysdate, sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test2', '내용 test2', 'admin', sysdate, sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test3', '내용 test3', 'admin', sysdate, sysdate, 2);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test4', '내용 test4', 'admin', sysdate, sysdate, 1);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test5', '내용 test5', 'admin', sysdate, sysdate, 5);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test6', '내용 test6', 'admin', sysdate, sysdate, 4);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test7', '내용 test7', 'admin', sysdate, sysdate, 3);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test8', '내용 test8', 'admin', sysdate, sysdate, 1);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test9', '내용 test9', 'admin', sysdate, sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test10', '내용 test10', 'admin', sysdate, sysdate, 3);
insert into board values((select nvl(max(seq), 0)+1 from board), '제목 test11', '내용 test11', 'admin', sysdate, sysdate, 5);

update board set title=?, content=?, nickname=?, regdate=sysdate where seq=?;

delete from board where seq=?;

commit;

create table member(userid varchar2(20) primary key,
userpw varchar2(300) not null,
email varchar2(100) not null,
tel varchar2(20) not null,
addr varchar2(100),
regdate date default sysdate,
birth date,
userpoint number default 100,
visited number default 0
);

insert into member values('admin', '1234', 'admin@naver.com', '010-1234-1234', '서울시 은평구', sysdate, '1991-11-13', 5, 1);
insert into member values('aaaa', '8878', 'aaaa@naver.com', '010-2222-2323', '인천시 부평구', sysdate, '1995-01-12', 5, 0);
insert into member values('bbbb', '4343', 'bbbb@naver.com', '010-1578-4344', '서울시 서초구', sysdate, '1987-02-23', 5, 0);
insert into member values('cccc', '2222', 'cccc@naver.com', '010-1248-7587', '서울시 구로구', sysdate, '1988-05-19', 5, 1);
insert into member values('dddd', '1515', 'dddd@naver.com', '010-5353-3015', '서울시 강남구', sysdate, '1989-10-12', 5, 1);

select * from member;
commit;