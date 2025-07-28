select 
-- from raw orders
a.orderid,
a.orderdate,
a.shipdate,
a.shipmode,
a.ordersellingprice - a.ordercostprice as orderprofit,
a.ordersellingprice,
a.ordercostprice,
--from raw customers
c.customername,
c.segment,
c.country
from {{ ref('raw_orders') }} as a 
left join {{ ref('raw_customers') }} as c 
on a.CUSTOMERID = c.CUSTOMERID