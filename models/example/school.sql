{{ config(materialized='table') }}

with school_data as (

    select * from 
    datathon_db.datathon_schema.schools_new

)

select *
from school_data