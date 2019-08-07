
use hairshop;

INSERT INTO hairshop.Level
(l_grade, l_sale)
values
('브론즈', 5),
('실버',10),
('골드',15);

INSERT INTO hairshop.event
(e_name, e_startDay, e_endDay, e_sale)
values
('일반', null,null, 0),
('생일', null,null, 10),
('광복절', '2019-8-15','2019-8-15',10 ),
('추석', '2019-9-12','2019-9-15', 10),
('크리스마스','2019-12-25','2019-12-25',10)
;

INSERT INTO hairshop.product
(p_name, p_price, p_division)
values
('태슬컷', 20000, '커트'),
('허쉬컷', 15000, '커트'),
('샌드컷', 15000, '커트'),
('페미닌컷', 20000, '커트'),
('허그컷', 20000, '커트'),
('페미닌펌', 50000, '펌'),
('레이스펌', 60000, '펌'),
('에그펌', 70000, '펌'),
('구름펌', 50000, '펌'),
('레인펌', 70000, '펌'),
('홀펌', 80000, '펌'),
('브릭오렌지', 30000, '염색'),
('미드나잇블루', 30000, '염색'),
('올리브브라운', 30000, '염색'),
('오로라레드', 30000, '염색'),
('블루블랙', 30000, '염색'),
('베이비브라운', 30000, '염색'),
('앰플', 20000, '케어'),
('두피마사지', 15000, '케어'),
('에센스', 30000, '케어'),
('드라이', 15000, '스타일링'),
('고데기', 15000, '스타일링')
;


INSERT INTO hairshop.guest
(g_no,g_id,g_password, g_l_grade, g_name, g_tel, g_email, g_birth, g_join, g_point, g_memo)
values
(null,'g23','1234', '골드', '김남호', '010-2342-2200', 'yoy@naver.com', '1994-01-13', '2019-01-03', 0, null),
(null,'gfdgfdgfdgt2','1234', '실버', '권영각', '010-6740-0540', 'gfd@daum.net', '1988-01-13', '2019-02-03', 1000, null),
(null,'gusert3','1234', '브론즈', '현종훈', '010-0380-0688', 'guser@naver.com', '1987-05-13', '2019-03-03', 2000, '말이많음'),
(null,'erwet4','1234', '골드', '김다영', '010-4620-0390', 'erw@naver.com', '1985-01-13', '2019-04-03', 3000, '올때마다늦게옴'),
(null,'vbcfdgfst1','1234', '골드', '변지영', '010-0947-0457', 'cfdgf@naver.com', '1985-02-13', '2019-05-03', 0, null),
(null,'grtrerer2','1234', '실버', '박현수', '010-1685-4563', 'trer@naver.com', '1995-07-13', '2019-06-23', 1000, null),
(null,'dskjflsfst3','1234', '브론즈', '현종훈', '010-7456-4569', 'kjfls@naver.com', '1985-08-15', '2019-07-22', 2000, ''),
(null,'uiroie4','1234', '골드', '김미자', '010-0789-4612', 'iro@daum.net', '1989-08-15', '2019-06-05', 3000, null),
(null,'gdfsd23','1234', '골드', '한수빈', '010-0456-4545', 'dfsd@naver.com', '1990-08-15', '2019-05-11', 0, null),
(null,'dgfdgt2','1234', '실버', '김명희', '010-0747-0556', 'gfdgt@naver.com', '1994-10-13', '2019-04-16', 1000, null),
(null,'gudddrt3','1234', '브론즈', '현빈', '010-4660-0223', 'gudddrt3@daum.net', '1993-12-13', '2019-03-07', 2000, ''),
(null,'sbvvet4','1234', '골드', '주예희', '010-0420-4610', 'sbvvet4@naver.com', '1995-01-30', '2019-02-25', 3000, '진상'),
(null,'cvcdgfst1','1234', '골드', '이현희', '010-1122-0186', 'cvcdgfst1@naver.com', '2000-01-10', '2019-01-22', 0, null),
(null,'gbvbtrerer2','1234', '실버', '김나나', '010-4560-0001', 'gbvbtrerer2@naver.com', '2000-05-05', '2019-02-19', 1000, null),
(null,'bbjflsfst3','1234', '브론즈', '박예련', '010-0450-0466', 'bbjt@naver.com', '1994-01-13', '2019-03-11', 2000, ''),
(null,'bbina4','1234', '골드', '박희명', '010-7777-0789', 'bbina4@naver.com', '1994-01-13', '2019-04-13', 3000, '투덜투덜됨'),
(null,'hielkjfdi','1234', '골드', '김이슬', '010-8881-0455', 'hielkjfdi@daum.net', '1994-01-13', '2019-05-07', 0, null),
(null,'dklfeigt2','1234', '실버', '이현지', '010-2220-0112', 'dklfeigt2@naver.com', '1998-05-05', '2019-06-06', 1000, null),
(null,'gugu11','1234', '브론즈', '이혁래', '010-3330-1210', 'gugu11@naver.com', '1999-09-07', '2019-07-15', 2000, ''),
(null,'rerer','1234', '골드', '최안희', '010-0012-0445', 'rerer@naver.com', '1994-02-21', '2019-07-19', 3000, '예민함'),
(null,'nenw','1234', '골드', '최예림', '010-0001-2000', 'nenw@naver.com', '1998-11-13', '2019-06-19', 0, null),
(null,'fderer2','1234', '실버', '최미정', '010-2000-1200', 'fderer2@naver.com', '1995-02-22', '2019-05-21', 1000, null),
(null,'dddskjflsfst3','1234', '브론즈', '박구슬', '010-0450-0550', 'dddskjflsfst3@naver.com', '2019-04-19', '2000-01-01', 2000, ''),
(null,'geferoie4','1234', '골드', '이혜정', '010-0005-0055', 'geferoie4@naver.com', '1997-07-13', '2019-03-03', 3000, null),
(null,'krkjsd23','1234', '골드', '박슬기', '010-0004-5611', 'krkjsd23@daum.net', '1991-08-13', '2019-02-22', 0, null),
(null,'qqqgt2','1234', '실버', '차지수', '010-0040-0011', 'qqqgt2@naver.com', '1991-09-29', '2019-01-17', 1000, null),
(null,'qdeddrt3','1234', '브론즈', '하희정', '010-0010-7600', 'qdeddrt3@naver.com', '1991-08-13', '2019-02-20', 2000, ''),
(null,'sdjkfvvet4','1234', '골드', '김예련', '010-0499-0430', 'sdjkfvvet4@naver.com', '1990-12-13', '2019-03-19', 3000,null),
(null,'cijioefst1','1234', '골드', '차현미', '010-0756-0770', 'cijioefst1@naver.com', '1990-11-13', '2019-03-23', 0, null),
(null,'gerer2','1234', '실버', '박현미', '010-4563-1100', 'gerer2@naver.com', '1990-09-01', '2019-04-15', 1000, null),
(null,'nmjflsfst3','1234', '브론즈', '고은정', '010-0440-4929', 'nmjflsfst3r@naver.com', '1988-05-17', '2019-05-11', 2000, ''),
(null,'mmina4','1234', '골드', '차은정', '010-6650-0110', 'mmina4@naver.com', '1985-03-13', '2019-06-17', 3000, null),
(null,'mminmmi11','1234', '골드', '백승우', '010-0990-0120', 'nm123@naver.com', '1980-01-29', '2019-07-26', 3000, null),
(null,'lskei12','1234', '골드', '안상현', '010-4681-5611', 'lskei12@daum.net', '1982-07-14', '2019-06-22', 0, null),
(null,'wkjdp56','1234', '실버', '김상미', '010-1115-0011', 'wkjdp56@hanmail.net', '1985-09-20', '2019-05-17', 1000, null),
(null,'wkwjsrj88','1234', '브론즈', '안미소', '010-1991-7600', 'wkwjsrj88@naver.com', '1988-01-13', '2019-04-20', 2000, ''),
(null,'dklssud16','1234', '골드', '곽희령', '010-5556-0430', 'dklssud16@naver.com', '1991-12-01', '2019-04-19', 3000,null),
(null,'gkdl009','1234', '골드', '차유진', '010-1356-0770', 'gkdl009@naver.com', '1991-05-04', '2019-04-23', 0, null),
(null,'tkfkd426','1234', '실버', '김유미', '010-4454-1100', 'tkfkd426@daum.net', '1992-05-18', '2019-04-15', 1000, null),
(null,'aldksgo777','1234', '브론즈', '안소희', '010-1566-4929', 'aldksgo777@naver.com', '1992-07-19', '2019-03-11', 2000, ''),
(null,'tifidgo25','1234', '골드', '이지은', '010-8456-0110', 'tifidgo25@naver.com', '1993-09-21', '2019-02-17', 3000, null),
(null,'vkvheh808','1234', '골드', '차현승', '010-6466-0120', 'vkvheh808@naver.com', '1993-10-11', '2019-03-26', 3000, null);


INSERT INTO hairshop.designer
(d_id,d_password,d_grade, d_name, d_tel, d_tel2, d_addr, d_addr2, d_addr3, d_birth, d_join, d_memo)
values
( 'master','master123','원장', '김경민', '010-4681-0110', '053-551-4544', '468135', '대구광역시수성구', '범어SK뷰아파트 101/1009','1972-09-15', '2019-01-01',null),
( 'jaehee46','jaehee46','실장', '장재희', '010-5556-4699', '053-323-1888', '776185', '대구광역시동구', '우방맨션 103/302','1985-01-26', '2019-01-01',null),
( 'gangmin1','gangmin1','실장', '강민석', '010-7778-0457', '010-7778-0457', '466841', '대구광역시동구', '서한강변타운102/702','1983-07-22', '2019-01-01',null),
( 'jinyg55','jinyg55','직원', '원진영', '010-2220-0121', '010-2220-0121', '168821', '대구광역시남구', '봉덕로11길 14-45','1990-05-18', '2019-02-01',null),
( 'boyeon3','boyeon3','직원', '정보연', '010-1230-6685', '010-4445-6537', '466555', '대구광역시달서구', '대명로 222','1988-07-02', '2019-02-01',null),
( 'seona787','seona787','신입', '현서나', '010-6677-7756', '010-6677-7756', '799941', '대구광역시남구', '대명복개로4길126','1995-04-21', '2019-02-01',null),
( 'daeun18','daeun18','신입', '신다은', '010-4461-4431', '010-4461-4431', '766612', '대구광역시중구', '명륜로 172 2층','1997-12-02', '2019-03-01',null),
( 'ahyun04','ahyun04','인턴', '지아현', '010-8851-5541', '010-8851-5541', '466135', '대구광역시중구', '동덕로 64-14','2000-10-18', '2019-05-01',null)
;



delete from hairshop.workdialog;
INSERT INTO hairshop.workdialog
(w_workTime, w_reservTime,w_priceTotal, w_e_Name, w_d_No, w_g_No)
values
('2019-07-01', '2019-07-01-11-00',100000, '일반', 1, 1),
(null, '2019-08-15-12-00',50000, '광복절', 2, 2),
(null, '2019-09-12-13-00',12000, '추석', 3, 2),
(null, '2019-09-15-14-00',15000, '추석', 3, 2),
(null, '2019-09-15-14-00',20000, '추석', 4, 4)
;

INSERT INTO hairshop.choice
(c_w_no,c_p_name)
values
(1,'태슬컷'),
(1,'허쉬컷'),
(1,'샌드컷'),
(2,'페미닌컷'),
(2,'허그컷'),
(3,'페미닌펌'),
(4,'레이스펌'),
(5,'에그펌')
;

INSERT INTO hairshop.review
(r_g_no, r_no, r_title, r_writer, r_writetime, r_content, r_file)values
(12, 1, '마음에 들어요', 'sbvvet4', '2019-02-06', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa1.jpeg'),
(13, 2, '한상아실장님 감사합니닷!!', 'cvcdgfst1', '2019-03-17', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa2.jpeg'),
(14, 3, '원장님 실력~ 믿을만한대요?', 'gbvbtrerer2', '2019-01-22', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa3.jpeg'),
(15, 4, '다음에도 여기서 해야겠다능!', 'bbjflsfst3', '2019-05-05', '어린이날 기념으로 머리했는데 잘되서 너무 기분이 좋습니닸!!! 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa4.jpeg'),
(16, 5, '가성비 최고의 미용실!! 여기임돠', 'bbina4', '2019-05-25', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa5.jpeg'),
(17, 6, '여기 정말 쩌는듯', 'hielkjfdi', '2019-02-06', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa1.jpeg'),
(18, 7, '고선영실장님 쵝오!', 'dklfeigt2', '2019-03-17', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa2.jpeg'),
(19, 8, '원장님 실력~ 괜춘한듯?', 'gugu11', '2019-01-22', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa3.jpeg'),
(20, 9, '다음에도 여기서 해야겠다능!', 'rerer', '2019-05-05', '어린이날 기념으로 머리했는데 잘되서 너무 기분이 좋습니닸!!! 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa4.jpeg'),
(21, 10, '가성비 최고의 미용실!! 여기임돠', 'nenw', '2019-05-25', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa5.jpeg'),
(22, 11, '마음에 들어요', 'fderer2', '2019-02-06', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa1.jpeg'),
(23, 12, '한상아실장님 감사합니닷!!', 'dddskjflsfst3', '2019-03-17', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa2.jpeg'),
(24, 13, '원장님 실력~ 믿을만한대요?', 'geferoie4', '2019-01-22', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa3.jpeg'),
(25, 14, '다음에도 여기서 해야겠다능!', 'krkjsd23', '2019-05-05', '어린이날 기념으로 머리했는데 잘되서 너무 기분이 좋습니닸!!! 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa4.jpeg'),
(26, 15, '가성비 최고의 미용실!! 여기임돠', 'qqqgt2', '2019-05-25', '태슬컷 했는데 1시간정도 걸렸구요. 디자이너분이 친절하게 응대해주셔서 너무 좋았어요!', 'mosa5.jpeg');

