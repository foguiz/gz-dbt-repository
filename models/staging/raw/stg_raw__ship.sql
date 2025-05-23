with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost as log_cost,
        CAST (ship_cost AS FLOAT64) ship_cost

    from source

)

select * from renamed
