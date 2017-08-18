view: bt_online_users {
  sql_table_name: etl.BT_OnlineUsers ;;

  dimension: account_type {
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: date_id {
    type: string
    sql: ${TABLE}.date_id ;;
  }

  dimension: deposits {
    type: string
    sql: ${TABLE}.Deposits ;;
  }

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

  dimension: emp_no {
    type: string
    sql: ${TABLE}.EmpNo ;;
  }

  dimension: emp_shop {
    type: string
    sql: ${TABLE}.emp_shop ;;
  }

  dimension: entry_date {
    type: string
    sql: ${TABLE}.entry_date ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: first_online_bet_date {
    type: string
    sql: ${TABLE}.first_online_bet_date ;;
  }

  dimension: ggr {
    type: string
    sql: ${TABLE}.GGR ;;
  }

  dimension: mc_signup_shop {
    type: string
    sql: ${TABLE}.mc_signup_shop ;;
  }

  dimension: mcsign_up {
    type: string
    sql: ${TABLE}.MCSign_up ;;
  }

  dimension: optin_to_comms {
    type: string
    sql: ${TABLE}.optin_to_comms ;;
  }

  dimension: prod_id {
    type: string
    sql: ${TABLE}.prod_id ;;
  }

  dimension: settled_returns {
    type: string
    sql: ${TABLE}.SettledReturns ;;
  }

  dimension: settled_stakes {
    type: string
    sql: ${TABLE}.SettledStakes ;;
  }

  dimension: struck_stakes {
    type: string
    sql: ${TABLE}.StruckStakes ;;
  }

  dimension: surname {
    type: string
    sql: ${TABLE}.Surname ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [first_name, surname, username]
  }
}
