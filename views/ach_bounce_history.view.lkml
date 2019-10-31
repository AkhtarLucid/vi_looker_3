view: ach_bounce_history {
  sql_table_name: viamerica_data.ACH_BOUNCE_HISTORY ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.DATE ;;
  }

  dimension: id_main_branch {
    type: string
    sql: ${TABLE}.ID_MAIN_BRANCH ;;
  }

  measure: count1 {
    type: count
    drill_fields: []
  }
}
