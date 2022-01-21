
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select id_evento, sorgento
from lead.lead.v3_eventi
limit 100

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
