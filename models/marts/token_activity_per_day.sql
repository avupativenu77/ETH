{{ config(tags=['token'], alias=var('token_name_var')~'_activity_per_day')}}

select
t.date,
t.token_address,
--sum(value/1e6) as total_usd_value
{{ conversion('t.value', var('token_decimals_var') )}} as total_value

from
{{ ref("stg_token_transfers")}} t

where lower(t.token_address) = '{{ var("token_address_var")}}'
group by 
    t.date,
    t.token_address