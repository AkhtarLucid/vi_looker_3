view: branch_audit {
  sql_table_name: viamerica_data.Branch_Audit ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

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

  dimension: id_branch {
    type: string
    sql: ${TABLE}.ID_BRANCH ;;
  }

  dimension: new_value_n {
    type: string
    sql: ${TABLE}.NEW_VALUE_N ;;
  }

  dimension: new_value_s {
    type: string
    sql: ${TABLE}.NEW_VALUE_S ;;
  }

  dimension: old_value_n {
    type: string
    sql: ${TABLE}.OLD_VALUE_N ;;
  }

  dimension: old_value_s {
    type: string
    sql: ${TABLE}.OLD_VALUE_S ;;
  }

  measure: count {
    type: count
    drill_fields: [column_name]
  }
}
