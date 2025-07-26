select 
orderid,
orderdate,
shipdate,
shipmode,
sum(ordersellingprice - ordercostprice) as orderprofit 
from {{ ref('stg_orders') }}
group by 
orderid,
orderdate,
shipdate,
shipmode