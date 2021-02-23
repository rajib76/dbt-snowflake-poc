{{
  config(
    materialized='table'
  )
}}

with school_mask_compliance_data as (
select * 
from {{source('back_to_work','SCHOOL')}}
join {{source('back_to_work','MASK_COMPLIANCE')}} using(SCHOOL_ID)
)
select *
from school_mask_compliance_data