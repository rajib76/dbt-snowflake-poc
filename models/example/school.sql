{{
  config(
    materialized='table', schema='ADMCOE_SCHEMA'
  )
}}

with school_data as (

    select * from 
    datathon_db.datathon_schema.schools_new

)

select *
from school_data