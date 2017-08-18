view: dim_colleague_bonus_lads {
  sql_table_name: etl.DimColleagueBonus_Lads ;;

  dimension: email_valid {
    type: string
    sql: ${TABLE}.email_valid ;;
  }

  dimension: emp_base_shop {
    type: string
    sql: ${TABLE}.emp_base_shop ;;
  }

  dimension: emp_current_shop {
    type: string
    sql: ${TABLE}.emp_current_shop ;;
  }

  dimension: emp_first_name {
    type: string
    sql: ${TABLE}.emp_first_name ;;
  }

  dimension: emp_last_name {
    type: string
    sql: ${TABLE}.emp_last_name ;;
  }

  dimension: emp_no {
    type: string
    sql: ${TABLE}.emp_no ;;
  }

  dimension: emp_shop {
    type: string
    sql: ${TABLE}.emp_shop ;;
  }

  dimension: entry_date {
    type: string
    sql: ${TABLE}.entry_date ;;
  }

  dimension: etl_date {
    type: string
    sql: ${TABLE}.etl_date ;;
  }

  dimension: mc_signup_shop {
    type: string
    sql: ${TABLE}.mc_signup_shop ;;
  }

  dimension: optin_to_comms {
    type: string
    sql: ${TABLE}.optin_to_comms ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [emp_first_name, emp_last_name, username]
  }
}
