connection: "snowflake_restaurant"

# include all the views
include: "*.view"

datagroup: restaulant_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: restaulant_data_default_datagroup

explore: restaurant_inspections {}
