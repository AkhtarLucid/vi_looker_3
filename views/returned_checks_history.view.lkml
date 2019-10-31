view: returned_checks_history {
  sql_table_name: viamerica_data.RETURNED_CHECKS_HISTORY ;;

  dimension_group: date_field_1 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_field_1 ;;
  }

  dimension: double_field_3 {
    type: number
    sql: ${TABLE}.double_field_3 ;;
  }

  dimension: int64_field_2 {
    type: number
    sql: ${TABLE}.int64_field_2 ;;
  }

  dimension: string_field_0 {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
