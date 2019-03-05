view: restaurant_inspections {
  sql_table_name: FIVETRAN_SCHEMA.RESTAURANT_INSPECTIONS ;;

  dimension: _file {
    type: string
    sql: ${TABLE}."_FILE" ;;
  }

  dimension: _line {
    type: string
    sql: ${TABLE}."_LINE" ;;
  }

  dimension_group: activity {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ACTIVITY_DATE" ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: facility_address {
    type: string
    sql: ${TABLE}."FACILITY_ADDRESS" ;;
  }

  dimension: facility_city {
    type: string
    sql: ${TABLE}."FACILITY_CITY" ;;
  }

  dimension: facility_id {
    type: string
    sql: ${TABLE}."FACILITY_ID" ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}."FACILITY_NAME" ;;
  }

  dimension: facility_state {
    type: string
    sql: ${TABLE}."FACILITY_STATE" ;;
  }

  dimension: facility_zip {
    type: string
    sql: ${TABLE}."FACILITY_ZIP" ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}."GRADE" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}."OWNER_NAME" ;;
  }

  dimension: pe_description {
    type: string
    sql: ${TABLE}."PE_DESCRIPTION" ;;
  }

  dimension: program_element_pe {
    type: string
    sql: ${TABLE}."PROGRAM_ELEMENT_PE" ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}."PROGRAM_NAME" ;;
  }

  dimension: program_status {
    type: string
    sql: ${TABLE}."PROGRAM_STATUS" ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}."RECORD_ID" ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}."SCORE" ;;
  }

  dimension: serial_number {
    type: string
    sql: ${TABLE}."SERIAL_NUMBER" ;;
  }

  dimension: service_code {
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension: service_description {
    type: string
    sql: ${TABLE}."SERVICE_DESCRIPTION" ;;
  }

  measure: count {
    type: count
    drill_fields: [facility_name, owner_name, program_name]
  }
}
