view: history_balance {
  sql_table_name: viamerica_data.History_Balance ;;

  dimension: ajusteddso {
    type: number
    sql: ${TABLE}.ajusteddso ;;
  }

  dimension: amttobereconciled {
    type: number
    sql: ${TABLE}.amttobereconciled ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }

  dimension: compliantbalance {
    type: number
    sql: ${TABLE}.compliantbalance ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}.credits ;;
  }

  dimension_group: date_balance {
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
    sql: ${TABLE}.date_balance ;;
  }

  dimension: debits {
    type: number
    sql: ${TABLE}.debits ;;
  }

  dimension: dso {
    type: number
    sql: ${TABLE}.dso ;;
  }

  dimension: id_main_branch {
    type: string
    sql: ${TABLE}.id_main_branch ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
