﻿-- 헤어샵
DROP SCHEMA IF EXISTS hairshop;

-- 헤어샵
CREATE SCHEMA hairshop;

-- 상품
CREATE TABLE hairshop.Product (
	p_name     VARCHAR(20) NOT NULL COMMENT '작업명', -- 작업명
	p_price    INT         NULL     COMMENT '가격', -- 가격
	p_division VARCHAR(10) NULL     COMMENT '분류', -- 분류
	p_secession BOOLEAN    NULL DEFAULT false COMMENT '탈퇴여부' -- 탈퇴여부
)
COMMENT '상품';

-- 상품
ALTER TABLE hairshop.Product
	ADD CONSTRAINT PK_Product -- 상품 기본키
		PRIMARY KEY (
			p_name -- 작업명
		);

-- 작업일지
CREATE TABLE hairshop.WorkDialog (
	w_no         INT         NOT NULL COMMENT '일정번호', -- 일정번호
	w_workTime   DATETIME    NULL     COMMENT '작업완료일', -- 작업완료일
	w_reservTime DATETIME    NULL     COMMENT '작업일예약', -- 작업일예약
	w_priceTotal INT         NULL     COMMENT '가격(총합)', -- 가격(총합)
	w_e_name     VARCHAR(20) default '일반' NULL     COMMENT '이벤트명', -- 이벤트명
	w_d_no       INT         NULL     COMMENT '디자이너', -- 디자이너
	w_g_no       INT         NULL     COMMENT '손님' -- 손님
)
COMMENT '작업일지';

-- 작업일지
ALTER TABLE hairshop.WorkDialog
	ADD CONSTRAINT PK_WorkDialog -- 작업일지 기본키
		PRIMARY KEY (
			w_no -- 일정번호
		);

ALTER TABLE hairshop.WorkDialog
	MODIFY COLUMN w_no INT NOT NULL AUTO_INCREMENT COMMENT '일정번호';

-- 이벤트
CREATE TABLE hairshop.Event (
	e_name     VARCHAR(20) NOT NULL COMMENT '자동등록', -- 이벤트명
	e_startDay DATE        NULL     COMMENT '시작일', -- 시작일
	e_endDay   DATE        NULL     COMMENT '종료일', -- 종료일
	e_sale     INT         NULL     COMMENT '할인율' -- 할인율
)
COMMENT '이벤트';

-- 이벤트
ALTER TABLE hairshop.Event
	ADD CONSTRAINT PK_Event -- 이벤트 기본키
		PRIMARY KEY (
			e_name -- 이벤트명
		);

-- 고정비
CREATE TABLE hairshop.Tax (
	t_no     INT         NOT NULL COMMENT '지출번호', -- 지출번호
	t_name   VARCHAR(20) NULL     COMMENT '이름', -- 이름
	t_price  INT         NULL     COMMENT '가격', -- 가격
	t_date   DATE        NULL     COMMENT '날짜', -- 날짜
	t_p_name VARCHAR(20) NULL     COMMENT '작업명' -- 작업명
)
COMMENT '고정비';

-- 고정비
ALTER TABLE hairshop.Tax
	ADD CONSTRAINT PK_Tax -- 고정비 기본키
		PRIMARY KEY (
			t_no -- 지출번호
		);

ALTER TABLE hairshop.Tax
	MODIFY COLUMN t_no INT NOT NULL AUTO_INCREMENT COMMENT '지출번호';

-- 작업선택
CREATE TABLE hairshop.Choice (
	c_w_no   INT         NOT NULL COMMENT '일정번호2', -- 일정번호2
	c_p_name VARCHAR(20) NOT NULL COMMENT '작업명' -- 작업명
)
COMMENT '작업선택';

-- 작업선택
ALTER TABLE hairshop.Choice
	ADD CONSTRAINT PK_Choice -- 작업선택 기본키
		PRIMARY KEY (
			c_w_no,   -- 일정번호2
			c_p_name  -- 작업명
		);

-- 디자이너
CREATE TABLE hairshop.Designer (
	d_no        INT          NOT NULL COMMENT '번호', -- 번호
	d_id        VARCHAR(20)  NULL     COMMENT '아이디', -- 아이디
	d_password  VARCHAR(50)  NULL     COMMENT '비밀번호', -- 비밀번호
	d_grade     VARCHAR(10)  NULL     COMMENT '직책', -- 직책
	d_name      VARCHAR(10)  NOT NULL COMMENT '이름', -- 이름
	d_tel       VARCHAR(15)  NOT NULL COMMENT '연락처', -- 연락처
	d_tel2      VARCHAR(15)  NULL     COMMENT '비상연락', -- 비상연락
	d_addr      VARCHAR(10)  NULL     COMMENT '우편번호', -- 우편번호
	d_addr2     VARCHAR(50)  NULL     COMMENT '주소', -- 주소
	d_addr3     VARCHAR(50)  NULL     COMMENT '상세주소', -- 상세주소
	d_birth     DATE         NULL     COMMENT '생일', -- 생일
	d_join      DATE         NULL     COMMENT '입사일', -- 입사일
	d_memo      VARCHAR(100) NULL     COMMENT '메모', -- 메모
	d_secession BOOLEAN      NULL     DEFAULT false COMMENT '탈퇴여부' -- 탈퇴여부
)
COMMENT '디자이너';

-- 디자이너
ALTER TABLE hairshop.Designer
	ADD CONSTRAINT PK_Designer -- 디자이너 기본키
		PRIMARY KEY (
			d_no -- 번호
		);

ALTER TABLE hairshop.Designer
	MODIFY COLUMN d_no INT NOT NULL AUTO_INCREMENT COMMENT '번호';

-- 손님
CREATE TABLE hairshop.Guest (
	g_no        INT          NOT NULL COMMENT '번호', -- 번호
	g_id        VARCHAR(20)  NULL     COMMENT '아이디', -- 아이디
	g_password  VARCHAR(50)  NULL     COMMENT '비밀번호', -- 비밀번호
	g_l_grade   VARCHAR(10)  NULL     COMMENT '등급', -- 등급
	g_name      VARCHAR(10)  NULL     COMMENT '이름', -- 이름
	g_tel       VARCHAR(15)  NULL     COMMENT '연락처', -- 연락처
	g_email     VARCHAR(50)  NULL     COMMENT '이메일', -- 이메일
	g_birth     DATE         NULL     COMMENT '생일', -- 생일
	g_join      DATE         NULL     COMMENT '가입일', -- 가입일
	g_point     INT          NULL     COMMENT '적립포인트', -- 적립포인트
	g_memo      VARCHAR(100) NULL     COMMENT '메모', -- 메모
	g_secession BOOLEAN      NULL     DEFAULT false COMMENT '탈퇴여부' -- 탈퇴여부
)
COMMENT '손님';

-- 손님
ALTER TABLE hairshop.Guest
	ADD CONSTRAINT PK_Guest -- 손님 기본키
		PRIMARY KEY (
			g_no -- 번호
		);

ALTER TABLE hairshop.Guest
	MODIFY COLUMN g_no INT NOT NULL AUTO_INCREMENT COMMENT '번호';

-- 등급
CREATE TABLE hairshop.Level (
	l_grade VARCHAR(10) NOT NULL COMMENT '등급', -- 등급
	l_sale  INT         NULL     COMMENT '할인율' -- 할인율
)
COMMENT '등급';

-- 등급
ALTER TABLE hairshop.Level
	ADD CONSTRAINT PK_Level -- 등급 기본키
		PRIMARY KEY (
			l_grade -- 등급
		);

-- 작업일지
ALTER TABLE hairshop.WorkDialog
	ADD CONSTRAINT FK_Event_TO_WorkDialog -- 이벤트 -> 작업일지
		FOREIGN KEY (
			w_e_name -- 이벤트명
		)
		REFERENCES hairshop.Event ( -- 이벤트
			e_name -- 이벤트명
		);

-- 작업일지
ALTER TABLE hairshop.WorkDialog
	ADD CONSTRAINT FK_Designer_TO_WorkDialog -- 디자이너 -> 작업일지
		FOREIGN KEY (
			w_d_no -- 디자이너
		)
		REFERENCES hairshop.Designer ( -- 디자이너
			d_no -- 번호
		);

-- 작업일지
ALTER TABLE hairshop.WorkDialog
	ADD CONSTRAINT FK_Guest_TO_WorkDialog -- 손님 -> 작업일지
		FOREIGN KEY (
			w_g_no -- 손님
		)
		REFERENCES hairshop.Guest ( -- 손님
			g_no -- 번호
		);

-- 고정비
ALTER TABLE hairshop.Tax
	ADD CONSTRAINT FK_Product_TO_Tax -- 상품 -> 고정비
		FOREIGN KEY (
			t_p_name -- 작업명
		)
		REFERENCES hairshop.Product ( -- 상품
			p_name -- 작업명
		);

-- 작업선택
ALTER TABLE hairshop.Choice
	ADD CONSTRAINT FK_WorkDialog_TO_Choice -- 작업일지 -> 작업선택
		FOREIGN KEY (
			c_w_no -- 일정번호2
		)
		REFERENCES hairshop.WorkDialog ( -- 작업일지
			w_no -- 일정번호
		);

-- 작업선택
ALTER TABLE hairshop.Choice
	ADD CONSTRAINT FK_Product_TO_Choice -- 상품 -> 작업선택
		FOREIGN KEY (
			c_p_name -- 작업명
		)
		REFERENCES hairshop.Product ( -- 상품
			p_name -- 작업명
		);

-- 손님
ALTER TABLE hairshop.Guest
	ADD CONSTRAINT FK_Level_TO_Guest -- 등급 -> 손님
		FOREIGN KEY (
			g_l_grade -- 등급
		)
		REFERENCES hairshop.Level ( -- 등급
			l_grade -- 등급
		);

	
	
grant all privileges 
on hairshop.* 
to 'user_hairshop'@'localhost'
identified by 'rootroot';


grant all privileges 
on hairshop.* 
to 'user_hairshop'@'%'
identified by 'rootroot';