view: payment_agreements {
  sql_table_name: viamerica_data.Payment_Agreements ;;

  dimension: balance {
    type: number
    sql: ${TABLE}.BALANCE ;;
  }

  dimension_group: date_start {
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
    sql: ${TABLE}.DATE_START ;;
  }

  dimension: id_branch {
    type: string
    sql: ${TABLE}.ID_BRANCH ;;
  }

  dimension: negotiated {
    type: number
    sql: ${TABLE}.NEGOTIATED ;;
  }

  dimension: paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PAID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
