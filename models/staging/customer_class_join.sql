SELECT CUSTOMER_MASTER.*, class_master.CLASS_NAME , class_master.class as class_2 , class_master.price
FROM CUSTOMER_MASTER
LEFT JOIN class_master
ON CUSTOMER_MASTER.CLASS = class_master.CLASS

