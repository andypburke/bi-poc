view: dim_payment_method {
  sql_table_name: etl.DimPaymentMethod ;;

  dimension: pay_method {
    type: string
    sql: ${TABLE}.PayMethod ;;
  }

  dimension: pay_method_group {
    type: string
    sql: ${TABLE}.PayMethod_Group ;;
  }

  dimension: pay_method_id {
    type: string
    sql: ${TABLE}.PayMethod_ID ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
