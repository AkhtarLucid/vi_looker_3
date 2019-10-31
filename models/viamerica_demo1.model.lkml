connection: "viamerica_demo"

# include all the views
include: "/views/**/*.view"

datagroup: viamerica_demo1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: viamerica_demo1_default_datagroup

explore: ach_bounce_history {}

explore: audit_credit {}

explore: branch_audit {}

explore: history_balance {}

explore: owner_credit_score {}

explore: payment_agreements {}

explore: returned_checks_history {}

explore: transactions {}

include: "*.dashboard.lookml"
