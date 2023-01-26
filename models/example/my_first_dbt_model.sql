
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below


                    
.... __      __.__                                               .__                    _________ 
..../  \    /  \  |__ ___.__.   __________     ______ ___________|__| ____  __ __  _____\_____   \
....\   \/\/   /  |  <   |  |  /  ___/  _ \   /  ___// __ \_  __ \  |/  _ \|  |  \/  ___/  /   __/
.... \        /|   Y  \___  |  \___ (  <_> )  \___ \\  ___/|  | \/  (  <_> )  |  /\___ \  |   |   
....  \__/\  / |___|  / ____| /____  >____/  /____  >\___  >__|  |__|\____/|____//____  > |___|   
....       \/       \/\/           \/             \/     \/                           \/  <___>   


*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
