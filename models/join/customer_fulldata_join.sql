{{config (materialized='table')}}

WITH
import_describe as  (
    select * from {{ref('describe1')}}
),

import_customer_class_join as (
    select * from {{ref('customer_class_join')}}
),

customer_join as (
    select
    customer_class.*,
    describe1.CUSTOMER_ID as customer_id1,
    describe1.AVG_USE,
    describe1.MIN_USE,
    describe1.MAX_USE

    from import_customer_class_join as customer_class
    INNER JOIN import_describe as describe1
    on customer_class.customer_id = describe1.customer_id
)

select *
from customer_join