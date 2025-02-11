-- ajax.sql

-- 설문 조사
create table tblResearch (
    seq number primary key,                 --PK
    question varchar2(500) not null,    --질문
    item1 varchar2(300) not null,         -- 항목1~4
    item2 varchar2(300) not null,
    item3 varchar2(300) not null,
    item4 varchar2(300) not null,
    cnt1 number default 0 not null,     --선택1~4
    cnt2 number default 0 not null,
    cnt3 number default 0 not null,
    cnt4 number default 0 not null
);

insert into tblResearch values (1, '사용 가능한 프로그래밍 언어는?'
                    , 'JAVA', 'Python', 'Visual Basic', 'Kotlin'
                    , default, default, default, default);

commit;


select * from tblResearch; 

update tblResearch set
    cnt1 = 30,
    cnt2 = 17,
    cnt3 = 25,
    cnt4 = 15
    where seq = 1;

commit;


select * from tblUser;










create table zipcode  (
   seq                  NUMBER(10)                        not null,
   zipcode              VARCHAR2(50),
   sido                 VARCHAR2(50),
   gugun                VARCHAR2(50),
   dong                 VARCHAR2(50),
   bunji                VARCHAR2(50),
   constraint PK_ZIPCODE primary key (seq)
);

select * from zipcode;


select * from tblInsa;

-- 고양이 위치 테이블
create table tblCat (
    catid varchar2(10) primary key, -- <img id="cat1"
    x number(4) not null,
    y number(4) not null
);

insert into tblCat values ('cat1', 0, 0);


create table tblCat2 (
    catid varchar2(10) primary key, -- <img id="cat1"
    x number(4) not null,
    y number(4) not null
);

insert into tblCat2 values ('cat1', 0, 0);
insert into tblCat2 values ('cat2', 0, 0);
insert into tblCat2 values ('cat3', 0, 0);
insert into tblCat2 values ('cat4', 0, 0);
insert into tblCat2 values ('cat5', 0, 0);

commit;

--데이터 형태 테스트
create table tblData (
    seq number primary key, --PK
    type varchar2(20) not null, --text, xml, json
    data varchar2(100) not null, --더미
    regdate date default sysdate not null
);
create sequence data_seq;




select * from tblCat;

delete from tblCat;

commit;

drop table tblCat;

create table tblCat (
    catid varchar2(10) primary key, -- <img id="cat1"
    img varchar2(20) not null, -- 'cat03.png'
    x number(4) not null,
    y number(4) not null
);

commit;
delete from tblCat;
select * from tblCat order by catid desc;
select max(substr(catid, 4)+0) as catid from tblCat;

cat2	catty04.png	0	0
cat3	catty05.png	0	0
cat4	catty05.png	0	0
cat5	catty08.png	0	0
cat1	catty13.png	0	0




