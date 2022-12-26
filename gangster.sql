select count(*) from hospital;
select * from member;
select * from reserve ORDER by res_code desc;
select * from counsel ORDER by coun_code desc;
SELECT * from dog;
select * from just_youtube;
select * from just_blog;
select * from mangdog;
select * from comments ORDER by comm_date desc;
select * from likely;
 commit;

-- 동물병원 
create sequence seq_hospital
increment by 1
start with 1
/
 
  
-- DAO 동물병원 리스트 (ㅇㅇ구 ㅇㅇ동) 삭제한 리스트  
select 
hos_code, hos_name, substr(hos_add, 1, instr(hos_add, '(') -1), NVL(hos_tel, ' '), hos_link,
NVL(hos_dayoff, ' '),
NVL(hos_details1, ' '), NVL(hos_details2, ' '), NVL(hos_details3, ' '), NVL(hos_details4, ' '), NVL(hos_details5, ' ')
from hospital ;



-- 테슷흐,, 병원이름 무족권 안농으로 주기 !!!!!
select 
 hos_code, hos_name, hos_add, NVL(hos_tel, ' '), hos_link,
 NVL(hos_dayoff, ' '),
 NVL(hos_details1, ' '), NVL(hos_details2, ' '), NVL(hos_details3, ' '), NVL(hos_details4, ' '), NVL(hos_details5, ' ')
from hospital 
where hos_name = '안농' ;

--------------------------------------------------------------------------------------------------------------------------------------------------


-- member 테이블 생성
create table member(
role varchar2(10) check(role in ('관리자','회원')), 
name varchar2(20) not null,
tel varchar2(20) not null,
mail varchar2(50) not null,
id varchar2(20) primary key,
pw varchar2(50) not null
);


-- 예약
create table reserve(
res_code VARCHAR2(10) PRIMARY KEY,
res_name VARCHAR2(10) NOT null,
kinder varchar2(10) check(kinder in ('유치원','호텔')) not null,
checkin varchar2(20) not null,
checkout varchar2(20) not null,
dog_name varchar2(20) not null,
dog_breed varchar2(20)not null,
dog_age varchar2(20) not null,
dog_weight varchar2(20) not null,
dog_character varchar2(200)
);


-- 예약코드 시퀀스
create sequence seq_reserve
increment by 1
start with 1
/


--------------------------------------------------------------------------------------------------------------------------------------------------

-- 상담 테이블 생성
create table counsel(
coun_code VARCHAR2(10) PRIMARY KEY, 
coun_name varchar2(20) not null,
coun_date varchar2(20), 
coun_tel varchar2(20) not null, 
coun_mail varchar2(50) not null, 
coun_title varchar2(50) not null, 
coun_content varchar2(4000) not null,
coun_done varchar2(10)
)

-- 상담 코드 시퀀스
create sequence seq_counsel
increment by 1
start with 1
/


--------------------------------------------------------------------------------------------------------------------------------------------------

--아가들 테이블 생성
create table dog(
dog_code VARCHAR2(10) PRIMARY KEY, 
dog_name VARCHAR2(20) not null, 
dog_breed VARCHAR2(20) not null, 
dog_sex VARCHAR2(5) not null, 
dog_age VARCHAR2(10) not null, 
dog_weight VARCHAR2(10) not null, 
dog_character VARCHAR2(1000) not null, 
dog_disease VARCHAR2(100), 
dog_story VARCHAR2(1000) not null, 
dog_NEUTRALIZATION VARCHAR2(5) not null, 
dog_VACCINATION VARCHAR2(20) not null,
DOG_MAIN  VARCHAR2(100)  NOT NULL ,
DOG_MAIN_SAVE VARCHAR2(100) NOT NULL ,
DOG_DETAIL  VARCHAR2(100)    NOT NULL ,
DOG_DETAIL_SAVE  VARCHAR2(100)   NOT NULL ,
DOG_POSTDATE   DATE   DEFAULT sysdate  NOT NULL)


-- 아가들 코드 시퀀스
create sequence seq_dog
increment by 1
start with 1
/


--------------------------------------------------------------------------------------------------------------------------------------------------

--just_youtube/blog 시퀀스 
create sequence seq_youtube
increment by 1
start with 1
/

create sequence seq_blog
increment by 1
start with 1
/


--just_youtube/blog 테이블 
create table just_youtube(
you_code varchar2(10) primary key,
you_title varchar2(1000) not null,
you_link varchar2(1000) not null) 


create table just_blog(
blog_code varchar2(10) primary key,
blog_title varchar2(1000) not null,
blog_link varchar2(1000) not null,
blog_thumb varchar2(1000) not null,
blog_thumb_save varchar2(1000) not null
)


--------------------------------------------------------------------------------------------------------------------------------------------------

-- 망독
    create table mangdog(
    mang_code varchar2(10) primary key, 
    mang_id varchar2(20) not null,
    mang_title varchar2(500) not null, 
    mang_content varchar2(4000) not null, 
    mang_pic varchar2(100) not null, 
    mang_pic_save varchar2(100) not null, 
    mang_date date default sysdate,
    mang_count int default 0 not null ,
    
    CONSTRAINT fk_mang_id3 foreign key (mang_id) references member(id) ON DELETE CASCADE
    )


-- 망독/댓글 시퀀스
create sequence seq_bbs
increment by 1
start with 1
/

create sequence seq_comm
increment by 1
start with 1
/



create table comments (
comm_code varchar2(10) primary key, 
mang_code varchar2(10) not null,  
id varchar2(20) not null,
comm_comment varchar2(1000) not null, 
comm_date date default sysdate,

CONSTRAINT fk_comm_mang_code foreign key (mang_code) references mangdog(mang_code) ON DELETE CASCADE,
CONSTRAINT fk_comm_id foreign key (id) references member(id) ON DELETE CASCADE
)


SELECT  *  FROM  (  
SELECT Tb.*,  rownum  rNum  FROM  (   
 SELECT  *  FROM  mangdog  ORDER  BY  rownum  DESC )  Tb ) 
WHERE  rNum  BETWEEN  1 and  8  order by mang_date desc;


--------------------------------------------------------------------------------------------------------------------------------------------------

-- 좋아요
ALTER TABLE mangdog ADD (mang_like int DEFAULT 0);

create table likely(
id VARCHAR2(20),
mang_code VARCHAR2(10),

CONSTRAINT pk_likely primary key (id, mang_code),
CONSTRAINT fk_likely_id foreign key (id) references member(id) ON DELETE CASCADE,
CONSTRAINT fk_likely_mang_code foreign key (mang_code) references mangdog(mang_code) ON DELETE CASCADE
)


--------------------------------------------------------------------------------------------------------------------------------------------------

desc mangdog
select rownum, A.* from (select * from mangdog order by mang_like desc) A where rownum between 1 and 3;
select * from tab


COMMIT;

