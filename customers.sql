select cust.id, 
       cust.name, 
       cust.email,
       min(ordr.created_at) as first_order_at,
       count(ordr.id)
  from `analytics-engineers-club.coffee_shop.customers` cust
  join `analytics-engineers-club.coffee_shop.orders` ordr
    on cust.id = ordr.customer_id
group by cust.id, 
       cust.name, 
       cust.email
order by first_order_at limit 5
;