select * from store;
select * from worker;
select * from product;

drop table if exists `product`;
drop table if exists `worker`;
drop table if exists `store`;


CREATE TABLE if not exists `product`
(
    `product_code`    INTEGER(3) NOT NULL COMMENT '물품코드',
    `product_type`    VARCHAR(10) NOT NULL COMMENT '물품종류',
    `product_name`    VARCHAR(10) NOT NULL COMMENT '물품이름',
    `store_code`    INTEGER(3) NOT NULL COMMENT '편의점코드',
    `category_code`    INTEGER(3) NOT NULL COMMENT '물품카테고리',
 PRIMARY KEY ( `product_code` )
) COMMENT = '물품';

-- 코드,물품,물품이름,편의점코드명 순으로 작성
INSERT INTO product VALUES (1, '과자','포카칩' , 2,1);
INSERT INTO product VALUES (2, '과자','허니버터칩' ,3,1);
INSERT INTO product VALUES (3, '과자','포테토스틱' , 3,1);
INSERT INTO product VALUES (4, '과자','감자깡' , 1,1);
INSERT INTO product VALUES (5, '과자','고구마깡' , 2,1);


INSERT INTO product VALUES (6, '아이스크림','죠스바' , 2,2);
INSERT INTO product VALUES (7, '아이스크림','바밤바' , 2,2);
INSERT INTO product VALUES (8, '아이스크림','비비빅' , 3,2);
INSERT INTO product VALUES (9, '아이스크림','붕어싸만코' , 1,2);
INSERT INTO product VALUES (10, '아이스크림','스크류바' , 1,2);



CREATE TABLE if not exists `worker`
(
    `worker_code`    INTEGER(3) NOT NULL COMMENT '직원코드',
    `store_code`    INTEGER(3) NOT NULL COMMENT '편의점코드',
    `salary`    INTEGER(10) NOT NULL COMMENT '월급',
    `worker_name`    VARCHAR(5) NOT NULL COMMENT '이름',
    `work_time`    VARCHAR(5) NOT NULL COMMENT '근무시간대',
 PRIMARY KEY ( `worker_code` )
) COMMENT = '직원';

INSERT INTO worker VALUES (1, 1, 3200000 , '남효정', '풀타임');
INSERT INTO worker VALUES (2, 2, 1000000 , '고병관', '오후');
INSERT INTO worker VALUES (3, 2, 1200000 , '조은선', '야간');






CREATE TABLE if not exists `store`
(
    `store_code`    INTEGER(3) NOT NULL COMMENT '편의점코드',
    `tel`    VARCHAR(15) COMMENT '매장전화번호',
	`store_name`    VARCHAR(15) NOT NULL COMMENT '편의점이름',
 PRIMARY KEY ( `store_code` )
) COMMENT = '편의점';

INSERT INTO store VALUES (1, '010-2222-0853','한분두분세분일레분');
INSERT INTO store VALUES (2, '010-1234-1234','미니미스톱');









