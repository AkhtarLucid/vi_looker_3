view: transactions {
  sql_table_name: viamerica_data.Transactions ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.COUNT ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.DATE ;;
  }

  dimension: gp {
    type: number
    sql: ${TABLE}.GP ;;
  }

  dimension: id_branch {
    type: string
    sql: ${TABLE}.ID_BRANCH ;;
  }

  dimension: id_location {
    type: string
    sql: ${TABLE}.ID_LOCATION ;;
  }

  dimension: id_state {
    type: string
    sql: ${TABLE}.ID_STATE ;;
  }

  dimension: m_gp {
    type: number
    sql: ${TABLE}.mGP ;;
  }

  dimension: payer {
    type: string
    sql: ${TABLE}.PAYER ;;
  }

  dimension: rebates {
    type: number
    sql: ${TABLE}.REBATES ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.USER ;;
  }

  measure: count2 {
    type: count
    drill_fields: []
  }
}
