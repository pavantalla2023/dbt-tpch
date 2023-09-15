{{
    config(
        materialized = 'view', alias = 'STG_BASE_PART_SUPPLIER'
    )
}}
select
    ps_partkey       as part_key,
    ps_suppkey       as supplier_key,
    ps_availqty      as supplier_availabe_quantity,
    ps_supplycost    as supplier_cost_amount,
    ps_comment       as part_supplier_comment
from
    {{ source('tpch', 'partsupp') }}
