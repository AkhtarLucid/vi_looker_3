view: audit_credit {
  sql_table_name: viamerica_data.Audit_Credit ;;

  dimension_group: date_audit {
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
    sql: ${TABLE}.DATE_AUDIT ;;
  }

  dimension: id_cashier {
    type: string
    sql: ${TABLE}.ID_CASHIER ;;
  }

  dimension: id_main_branch {
    type: string
    sql: ${TABLE}.ID_MAIN_BRANCH ;;
  }

  dimension: new_credit {
    type: number
    sql: ${TABLE}.NEW_CREDIT ;;
  }

  dimension: new_credit_wknd {
    type: number
    sql: ${TABLE}.NEW_CREDIT_WKND ;;
  }

  dimension: old_credit {
    type: number
    sql: ${TABLE}.OLD_CREDIT ;;
  }

  dimension: old_credit_wknd {
    type: number
    sql: ${TABLE}.OLD_CREDIT_WKND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
