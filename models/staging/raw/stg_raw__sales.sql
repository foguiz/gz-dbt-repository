with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as product_id,
        quantity,
        revenue
    from source

)

select * from renamed
