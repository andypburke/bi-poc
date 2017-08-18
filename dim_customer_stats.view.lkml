view: dim_customer_stats {
  sql_table_name: etl.DimCustomerStats ;;

  dimension: customer_seq {
    type: string
    sql: ${TABLE}.CUSTOMER_SEQ ;;
  }

  dimension: first_deposit_channel {
    type: string
    sql: ${TABLE}.FIRST_DEPOSIT_CHANNEL ;;
  }

  dimension: first_deposit_date {
    type: string
    sql: ${TABLE}.FIRST_DEPOSIT_DATE ;;
  }

  dimension: first_online_bet_date {
    type: string
    sql: ${TABLE}.FIRST_ONLINE_BET_DATE ;;
  }

  dimension: first_overall_bet_date {
    type: string
    sql: ${TABLE}.FIRST_OVERALL_BET_DATE ;;
  }

  dimension: first_prod_group {
    type: string
    sql: ${TABLE}.FIRST_PROD_GROUP ;;
  }

  dimension: first_retail_bet_date {
    type: string
    sql: ${TABLE}.FIRST_RETAIL_BET_DATE ;;
  }

  dimension: last_online_bet_pre_connect {
    type: string
    sql: ${TABLE}.LAST_ONLINE_BET_PRE_CONNECT ;;
  }

  dimension: predicted_ltv {
    type: string
    sql: ${TABLE}.PREDICTED_LTV ;;
  }

  dimension: second_deposit_date {
    type: string
    sql: ${TABLE}.SECOND_DEPOSIT_DATE ;;
  }

  dimension: second_online_bet_date {
    type: string
    sql: ${TABLE}.SECOND_ONLINE_BET_DATE ;;
  }

  dimension: third_deposit_date {
    type: string
    sql: ${TABLE}.THIRD_DEPOSIT_DATE ;;
  }

  dimension: third_online_bet_date {
    type: string
    sql: ${TABLE}.THIRD_ONLINE_BET_DATE ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
