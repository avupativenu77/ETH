
select

{{ dbt_utils.star(ref("stg_transactions_enriched"), except=['new_field'], quote_identifiers= false, prefix='STG_')}}

from
{{ ref("stg_transactions_enriched")}}

