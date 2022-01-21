
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select
       cast(corpo_evento as json)::json->'id_auto' as id_auto,
       cast(corpo_evento as json)::json->'targa' as targa,
       cast(corpo_evento as json)::json->'avlEvent'->'deviceAirId' as deviceAirId
from blackbox.blackbox.eventi
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
