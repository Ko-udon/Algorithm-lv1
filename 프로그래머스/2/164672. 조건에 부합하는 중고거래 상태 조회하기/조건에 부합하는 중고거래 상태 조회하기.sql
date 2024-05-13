-- 코드를 입력하세요
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
CASE
	WHEN STATUS = 'RESERVED' 
	THEN '예약중'
	WHEN STATUS = 'DONE' 
	THEN '거래완료'
	WHEN STATUS = 'SALE' 
	THEN '판매중'
END as STATUS

from USED_GOODS_BOARD
where CREATED_DATE like '2022-10-05'
order by BOARD_ID desc