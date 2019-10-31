view: owner_credit_score {
  sql_table_name: viamerica_data.OWNER_CREDIT_SCORE ;;

  dimension: int64_field_2 {
    type: number
    sql: ${TABLE}.int64_field_2 ;;
  }

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension_group: timestamp_field_1 {
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
    sql: ${TABLE}.timestamp_field_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
