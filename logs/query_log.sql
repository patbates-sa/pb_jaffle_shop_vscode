-- created_at: 2026-02-24T01:23:01.498470+00:00
-- finished_at: 2026-02-24T01:23:01.705963+00:00
-- elapsed: 207ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.pb_jaffle_shop_vscode.inline
-- query_id: 01c29dd3-090a-fd7c-0004-7d832f90d0b2
-- desc: Get table schema
describe table "RAW"."JAFFLE_SHOP"."ORDERS";
-- created_at: 2026-02-24T01:23:01.718731+00:00
-- finished_at: 2026-02-24T01:23:01.860590+00:00
-- elapsed: 141ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.pb_jaffle_shop_vscode.inline
-- query_id: 01c29dd3-090a-ff89-0004-7d832f907a3a
-- desc: Get table schema
describe table "RAW"."JAFFLE_SHOP"."CUSTOMERS";
-- created_at: 2026-02-24T01:23:02.989667+00:00
-- finished_at: 2026-02-24T01:23:04.460680+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: not available
-- desc: dbt run query
select * from (select * from (
with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from raw.jaffle_shop.customers

),

orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from raw.jaffle_shop.orders

)
SELECT * FROM ORDERS
) as __preview_sbq__ limit 1000
) limit 10;
