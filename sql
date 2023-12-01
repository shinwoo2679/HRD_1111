drop table member_tb1_02;

create table member_tb1_02(
custno number(6) not null primary key,
custname varchar2(20),
phone varchar2(13),
address varchar2(60),
joindate date,
grade char(1),
city char(2)
);

insert into member_tb1_02 values(100001,'김행복','010-1111-2222','서울 동대문구 휘경1동','2015-12-02','A','01');
insert into member_tb1_02 values(100002,'이축복','010-1111-3333','서울 동대문구 휘경2동','2015-12-06','B','01');
insert into member_tb1_02 values(100003,'장믿음','010-1111-4444','울릉군 울릉읍 독도1리','2015-10-01','B','30');
insert into member_tb1_02 values(100004,'최사랑','010-1111-5555','울릉군 울릉읍 독도2리','2015-11-13','A','30');
insert into member_tb1_02 values(100005,'진평화','010-1111-6666','제주도 제주시 외나무골','2015-12-25','B','60');
insert into member_tb1_02 values(100006,'차공단','010-1111-7777','제주도 제주시 감나무골','2015-12-11','C','60');

commit;