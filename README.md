CRM_1

desc INV_STK_SHUFFLE_TMP 
desc INV_RS_STOCK_FREE_VW

SELECT T.BIN_NUMBER, T.SALES FROM INV_STK_SHUFFLE_TMP T LEFT JOIN INV_RS_STOCK_FREE_VW ON V.BIN_NUMBER = T.BIN_NUMBER  AND V.WAREHOUSE = T.WAREHOUSE AND V.PRODUCT_CODE = T.PRODUCT_CODE

desc INV_PARA_LST
desc RBD_UNIT 
desc ZZ_PRET_HDG
desc ZZ_PINV_HDG 
FREE

SELECT * from INV_RS_STOCK_FREE_VW_STORE  where  PRODUCT_CODE like 'AZOT001'
SELECT * from INV_STK_SHUFFLE_TMP  where  PRODUCT_CODE like 'AZOT001'
select TOT_QTY from INV_STK_SHUFFLE_BATCH
QTY 
desc INV_RS_STOCK_FREE_VW_STORE
SELECT * from INV_RS_STOCK_FREE_VW_STORE where PRODUCT_CODE like 'AZOT001'

update   INV_RS_STOCK_FREE_VW_STORE SET  store_code='TMP'   where free = 199
desc INV_SP_ALERT_BUFFER_ecom
SELECT * from INV_SP_ALERT_BUFFER   where  STORE_CODE like 'TMP'
SELECT * from INV_SP_ALERT_BUFFER where PRODUCT_CODE like 'AZOT001'
UPDATE INV_SP_ALERT_BUFFER SET LOGINDATE = null,loginlocation = null WHERE username like 'GZIS07'

desc INV_RS_STOCK_RESERVED_VW
desc INV_RS_STOCK_FREE_VW_NEW
desc inv_rs_stock_free_raw_vw_new
DESC inv_rs_store_buffer_reserve

CREATE OR REPLACE FORCE VIEW FES.INV_RS_STOCK_FREE_VW_STORE
(
   FREE,
   DE_BUFFER_QTY,
   WAREHOUSE,
   PRODUCT_CODE,
   STORE_CODE,
   BIN_NUMBER,
   ONHAND,
   RESERVED,
   FREE_1,
   BIN_LOCATION_TYPE,
   WH_IN_TRANSIT_ONHAND,
   WH_IN_TRANSIT_RESERVED,
   WH_IN_TRANSIT_FREE
)
SELECT *  FROM INV_RS_STOCK_FREE_VW_STORE  WHERE  PRODUCT_CODE = 'MLTH3ZA/A'



SELECT a.*,a.rowid from inv_rs_parameter a where type like '%WAIVE%'

-----------------------------------------------------------------------------------------------
CRM_2

 SELECT B.WAREHOUSE, B.PRODUCT_CODE, B.FROM_STORE ,v.free 
                        FROM ( SELECT SUM(NVL(REGEXP_SUBSTR(QTY, '[0-9]*',1), 0)) TOT_QTY, WAREHOUSE, PRODUCT_CODE, FROM_STORE  
                               FROM INV_STK_SHUFFLE_BATCH WHERE BATCH_ID ='117' GROUP BY WAREHOUSE, PRODUCT_CODE, FROM_STORE ) B  
                       
                        LEFT JOIN INV_RS_STOCK_FREE_VW_STORE V  
                       
                          ON  B.WAREHOUSE = V.WAREHOUSE 
                          AND B.FROM_STORE = V.BIN_NUMBER 
                          AND B.PRODUCT_CODE = V.PRODUCT_CODE 
                        WHERE B.TOT_QTY > NVL(V.FREE, 0) 
                        
                        
 select * from   INV_STK_SHUFFLE_BATCH WHERE BATCH_ID = 'EVT-26789'            
  select * from   PORDER_ALLOCATE_DTL WHERE BATCH_ID ='EVT-26789'  
 
 desc INV_RS_STOCK_FREE_VW_STORE
 select * from user_rights where description like 'User%'
 
select * from INV_RS_STOCK_FREE_VW_STORE where PRODUCT_CODE like '%'
 
 
     select P.WAREHOUSE, P.PRODUCT_CODE, P.STORE_CODE, COUNT(*) 
                      from PORDER_ALLOCATE_DTL D  
                       JOIN PORDER_ALLOC_SYNC s on d.BATCH_ID = s.BATCH_ID and D.CASE_ID = s.CASE_ID 
                      JOIN PORDER_ORDER P on P.CASE_ID = s.CASE_ID 
                          and p.PRODUCT_CODE = s.ORI_PRODUCT_CODE  
                          and p.STATUS = s.ORI_STATUS 
                          and p.STORE_CODE = s.ORI_STORE_CODE 
                       where d.BATCH_ID ='EVT-26789'
                         group by P.WAREHOUSE, P.PRODUCT_CODE, P.STORE_CODE 
                         
------------------------------------------------------------------------------------------------------
CWSADM_1

desc INV_STK_SHUFFLE_TMP


desc INV_RS_STOCK_FREE_VW_STORE

desc INV_PARA_LST
desc porder_group_alloc_product
select * from porder_group_alloc_product where PRODUCT_CODE like 'MNDN3ZA/A';
SELECT a.*,a.rowid From PORDER_ORDER a where PRODUCT_CODE like 'MNDN3ZA/A';
SELECT a.*,a.rowid from porder_group_alloc_product a where  ALLOCATED_WH_QTY like 0

desc PORDER_GROUP_ALLOC_PROD_PK

Insert into porder_group_alloc_product (GROUP_ALLOC_ID,PRODUCT_CODE,AVAIL_QTY,OS_QTY,STOCK_ALLOCATE_BATCH_ID,ALLOCATE_BATCH_ID,allocated_qty, AVAIL_WH_QTY, ALLOCATED_WH_QTY) values (:1 ,:2 ,:3 ,:4 ,null,:5 ,:6 ,:7 ,:8 )
Insert into porder_group_alloc_product (GROUP_ALLOC_ID,PRODUCT_CODE,AVAIL_QTY,OS_QTY,STOCK_ALLOCATE_BATCH_ID,ALLOCATE_BATCH_ID,allocated_qty, AVAIL_WH_QTY, ALLOCATED_WH_QTY) values (1,'MNDN3ZA/z' ,1 ,8, 0,'EVT-25163',0,1,0 )

Insert into porder_group_alloc_product (GROUP_ALLOC_ID,PRODUCT_CODE,AVAIL_QTY,OS_QTY,STOCK_ALLOCATE_BATCH_ID,ALLOCATE_BATCH_ID,allocated_qty, AVAIL_WH_QTY, ALLOCATED_WH_QTY) values (?,?,?,?,null,?,?,?,?)

select *  from porder_group_alloc_product where GROUP_ALLOC_ID=1 and STOCK_ALLOCATE_BATCH_ID=0

SELECT a.*,a.rowid from porder_group_alloc_product a where PRODUCT_CODE like 'S9010-256GBK'

SELECT a.*,a.rowid from porder_group_alloc_product a where GROUP_ALLOC_ID like '3746'



 UPDATE PORDER_ORDER SET STORE_CODE = 'BM' WHERE cust_name like 'Starlight'
ABD

SELECT STORE_CODE from PORDER_ORDER a where cust_name like 'Starlight'

SELECT a.*,a.rowid from PORDER_ORDER a where PRODUCT_CODE like 'S9010-256GBK'
SELECT a.*,a.rowid from PORDER_parameter  a where Code like 'MNDN3ZA/A'
SELECT a.*,a.rowid from PORDER_parameter  a where Code like 'MLTH3ZA/A'
SELECT a.*,a.rowid from PORDER_parameter  a where Code like 'S9010-256GBK'

SELECT * FROM PORDER_PARAMETER  where  Code like 'MLTH3ZA/A'

SELECT * FROM Porder_Store_Quota where PRODUCT_MODEL= '%13%'

desc PORDER_PARAMETER

            
     select P.WAREHOUSE, P.PRODUCT_CODE, P.STORE_CODE, COUNT(*) 
                      from PORDER_ALLOCATE_DTL D  
                       JOIN PORDER_ALLOC_SYNC s on d.BATCH_ID = s.BATCH_ID and D.CASE_ID = s.CASE_ID 
                      JOIN PORDER_ORDER P on P.CASE_ID = s.CASE_ID 
                          and p.PRODUCT_CODE = s.ORI_PRODUCT_CODE  
                          and p.STATUS = s.ORI_STATUS 
                          and p.STORE_CODE = s.ORI_STORE_CODE 
                       where d.BATCH_ID ='EVT-26789'

                         group by P.WAREHOUSE, P.PRODUCT_CODE, P.STORE_CODE ;
                         
                         
                            select d.batch_id, P.WAREHOUSE, P.PRODUCT_CODE, P.STORE_CODE, COUNT(*) 
                      from PORDER_ALLOCATE_DTL D  
                       JOIN PORDER_ALLOC_SYNC s on d.BATCH_ID = s.BATCH_ID and D.CASE_ID = s.CASE_ID 
                      JOIN PORDER_ORDER P on P.CASE_ID = s.CASE_ID 
                          and p.PRODUCT_CODE = s.ORI_PRODUCT_CODE  
                          and p.STATUS = s.ORI_STATUS 
                          and p.STORE_CODE = s.ORI_STORE_CODE 
                    --    where d.BATCH_ID =26739
                         group by d.batch_id, P.WAREHOUSE, P.PRODUCT_CODE, P.STORE_CODE ;
                         
                         
   Select * from  PORDER_ALLOC_SYNC where    batch_id like 'EVT-%';
       
            select d.BATCH_ID, p.CASE_ID, p.STATUS, p.PRODUCT_CODE, p.CURRENT_STOCK_LOC, p.STORE_CODE
from PORDER_ALLOCATE_DTL D
join PORDER_ALLOCATE_HDR h on d.BATCH_ID = h.BATCH_ID
join PORDER_ORDER P on P.CASE_ID = D.CASE_ID and h.PRODUCT_CODE = p.PRODUCT_CODE and d.STORE_CODE = p.STORE_CODE
where d.BATCH_ID = 'EVT-26740'
and P.STATUS in ('PA','PRA');


select * from PORDER_ORDER where  STATUS in ('PA','PRA'); case_id in (select case_id from PORDER_ALLOCATE_DTL where BATCH_ID = 'EVT-26740');

 select * from   INV_STK_SHUFFLE_BATCH WHERE BATCH_ID = '26789'            
  select * from   PORDER_ALLOCATE_DTL WHERE BATCH_ID ='26789'  
    select * from   porder_allocate_priority WHERE BATCH_ID ='EVT-26789'
    
 sql =  SELECT FREE  FROM INV_RS_STOCK_FREE_VW__STORE 
 WHERE WAREHOUSE = ?
 AND PRODUCT_CODE = ? 
 AND BIN_NUMBER = ?;


---------------------------------------------------------------------------------------------------------------------
FES_1

SELECT a.*,a.rowid from user_info a where username like 'GZIS%'
SELECT a.*,a.rowid from user_info a where username like 'IFC01'
SELECT a.*,a.rowid from user_info a where username like 'GZIS12'
SELECT a.*,a.rowid from user_info a where username like 'GZIS07'
SELECT a.*,a.rowid from user_info a where username like 'starlight'
SELECT a.*,a.rowid from user_info a where username like 'StarlighrChen'
SELECT a.*,a.rowid from user_info a where username like 'CoralHo3'

SELECT a.*,a.rowid from HR_sTAFF_2 a where username like 'GZIS07'
DESC HR_sTAFF_2

Select * from all_tab_column a where COLUMN_NAME Like upper( 'StreetFighter');


 UPDATE user_info SET LOGINDATE = null,loginlocation = null WHERE username like 'CoralHo4'
  UPDATE user_info SET LOGINDATE = null,loginlocation = null WHERE username like 'GZIS12'
  UPDATE user_info SET LOGINDATE = null,loginlocation = null WHERE username like 'IFC01'
  UPDATE user_info SET LOGINDATE = null,loginlocation = null WHERE username like 'SA5078'
   UPDATE user_info SET LOGINDATE = null,loginlocation = null WHERE username like 'connieho'
   UPDATE user_info SET LOGINDATE = null,loginlocation = null WHERE username like 'starlight'

SELECT * from user_info where sex like 'M'

select user_info where username

 select rowid from user_info
 
 select * from user_module
 
 select * from user_rights --a where username like 'IFC01'
 
 select * from user_rights where description like 'All%'
 SELECT a.*,a.rowid from user_rights a where LONG_DESC like 'Pre%'
  select * from user_rights where CODE like 'Ca3%'
  
 SELECT * from user_info a where username like 'GZIS07'
SELECT a.*,a.rowid  from user_info a where username like 'IFC01'
SELECT a.*,a.rowid  from user_info a where username like 'connieho'

commit

SELECT a.*,a.rowid FROM PORDER_ORDER a where product_Code like 'S9010-256GBK'
SELECT a.*,a.rowid FROM PORDER_ORDER a where product_Code like 'MNDN3ZA/A'
SELECT CURRENT_STOCK_LOC FROM PORDER_ORDER a where product_Code like 'MNDN3ZA/A'
SELECT a.*,a.rowid PORDER_parameter a where product_Code like 'MNDN3ZA/A'
select * from OS_quantity where product_Code like 'MNDN3ZA/A'


desc PORDER_ORDER

allocated_qty

desc INV_RS_STOCK_FREE_VW_STORE

update user_info set password = (select password from user_info where username = 'PenChan'), seed= (select seed from user_info where username = 'PenChan') where username = 'connieho'
update user_info set password = (select password from user_info where username = 'PenChan'), seed= (select seed from user_info where username = 'PenChan') where username = 'GZIS07'
update user_info set password = (select password from user_info where username = 'PenChan'), seed= (select seed from user_info where username = 'PenChan') where username = 'IFC01'
update user_info set password = (select password from user_info where username = 'PenChan'), seed= (select seed from user_info where username = 'PenChan') where username = 'CoralHo4'

BATCH_ID
select * from porder_allocate_hdr where batch_id='EVT-26729'

SELECT a.*,a.rowid from ext_typdesc a where typdesctblname = 'USER_REQ_PWD_EMAIL_ALERT' and typdescclass = 'PWALT'

select * from USER_INFO_HIST WHERE username= 'CoralWenRBDMachine' and ACTIONTYPE ='INSERT'
 
INSERT into user_info  (select * from USER_INFO_HIST WHERE username= 'CoralWenRBDMachine' and ACTIONTYPE ='INSERT')

--------------------------------------------------------------------------------------------------------------------------------------
FES_2

SELECT * from user_info a where username like 'IFC01'


Select * from PORDER_parameter where  PROGRAM = 'ALLOCATE' and type='ALLOC_EXCLUDE' and status = 'Y'

SELECT * from PORDER_ORDER where cust_name like 'Starlight'

SELECT RBD_UNIT_CODE  FROM  RBD_UNIT R  WHERE  ONLINE_STORE = 'Y'  AND RBD_UNIT_CODE NOT IN( SELECT ATTRIBUTE1 FROM INV_PARA_LST WHERE PROGRAM = '%' AND TYPE = '%' AND CODE = '%' AND STATUS='Y')


SELECT *  FROM  RBD_UNIT R


BIN_NUMBER


SELECT a.*,a.rowid from inv_rs_parameter a where type like '%WAIVE%'

desc  zz_prec_hdr
SELECT lib_waiving.cal_min_waive_group(LIB_WAIVING.get_form_type('67'), 'A26', 0, rece_amount) FROM zz_prec_hdr WHERE receipt_no = '%1%'
 and TYPDESCTYPNAME >= ?

select * from ext_typdesc where typdesctblname = 'Waive_Group'  AND TYPDESCCLASS = LIB_WAIVING.get_form_type('67')   ORDER BY TYPDESCTYPNAME 

desc LIB_WAIVING

SELECT groupid from user_info  where username like 'IFC01'

---------------------------------------------------------------------------------------------------------------------------
PCTUAT

select ROWID,A.SUBR_NUM, CREATE_DATE, TX_AMT , CARD_TYPE from pct_pg_request A 
where card_type IN ('AL' ,'PM') AND CREATE_DATE > SYSDATE - 360 AND QSI_RESP_CODE = '0'
ORDER BY CREATE_DATE DESC


SELECT a.*,a.rowid  from pct_pg_request A 
where card_type IN ('AL' ,'PM') AND CREATE_DATE > SYSDATE - 360 AND QSI_RESP_CODE = '0'
ORDER BY CREATE_DATE DESC

subscriber
CARD_TYPE_DESC
 select * from PCT_FES_PG_REQUEST_V where card_type ='PM'

desc PCT_FES_PG_REQUEST_V

select * from  pct_parameter_ctrl where REC_DESC ='WeChat Pay'

DESC pct_pgreport
DESC PCT_PVA_COMPTX
DESC PCT_Report

DESC PCTADM.PCT_FES_PG_REQUEST_V;


SELECT a.*,a.rowid from pct_parameter_ctrl a where REC_DESC ='WeChat Pay'
SELECT a.*,a.rowid from pct_parameter_ctrl a where REC_DESC ='PayMe'


