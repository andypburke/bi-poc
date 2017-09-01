view: transactions {
  sql_table_name: etl.FactCustomerTransactions ;;

  dimension: bet_method {
    type: string
    sql: ${TABLE}.bet_method ;;
  }

  dimension: bet_type {
    type: string
    sql: ${TABLE}.bet_type ;;
  }

  dimension: bonus_cost {
    type: string
    sql: ${TABLE}.bonus_cost ;;
  }

  dimension: bonus_seq {
    hidden: yes
    type: string
    sql: ${TABLE}.bonus_seq ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_id {
    hidden: yes
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: cash_in {
    type: string
    sql: ${TABLE}.cash_in ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: connect_flag {
    type: string
    sql: ${TABLE}.connect_flag ;;
  }

  dimension: connect_in {
    type: string
    sql: ${TABLE}.connect_in ;;
  }

  dimension: cust_rating_at_time {
    type: string
    sql: ${TABLE}.cust_rating_at_time ;;
  }

  dimension: cust_shop_id {
    hidden: yes
    type: string
    sql: ${TABLE}.cust_shop_id ;;
  }

  dimension: customer_seq {
    hidden: yes
    type: string
    sql: ${TABLE}.customer_seq ;;
  }

  dimension_group: transaction {
    type: time
    datatype: yyyymmdd
    timeframes: [date, week, month, year, day_of_week, day_of_month]
    sql: cast(${TABLE}.date_id as int64);;
  }


  dimension: dcms_src_id {
    hidden: yes
    type: string
    sql: ${TABLE}.dcms_src_id ;;
  }

  dimension: gbp_ggr {
    type: number
    sql: cast(${TABLE}.gbp_ggr as float64) ;;
  }

  dimension: ims_vip_level_at_time {
    type: string
    sql: ${TABLE}.ims_vip_level_at_time ;;
  }

  dimension: logged_in {
    type: string
    sql: ${TABLE}.logged_in ;;
  }

  dimension: money_in {
    type: string
    sql: ${TABLE}.money_in ;;
  }

  dimension: no_of_bets_settled {
    type: string
    sql: ${TABLE}.no_of_bets_settled ;;
  }

  dimension: no_of_bets_struck {
    type: string
    sql: ${TABLE}.no_of_bets_struck ;;
  }

  dimension: no_of_bonus_redemptions {
    type: string
    sql: ${TABLE}.no_of_bonus_redemptions ;;
  }

  dimension: no_of_deposits {
    type: string
    sql: ${TABLE}.no_of_deposits ;;
  }

  dimension: no_of_fobt_sessions {
    type: string
    sql: ${TABLE}.no_of_fobt_sessions ;;
  }

  dimension: no_of_slips_settled {
    type: string
    sql: cast(${TABLE}.no_of_slips_settled as float64) ;;
  }

  dimension: no_of_slips_struck {
    type: string
    sql: ${TABLE}.no_of_slips_struck ;;
  }

  dimension: no_of_withdrawals {
    type: string
    sql: ${TABLE}.no_of_withdrawals ;;
  }

  dimension: paymethod_id {
    hidden: yes
    type: string
    sql: ${TABLE}.paymethod_id ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: prod_id {
    hidden: yes
    type: string
    sql: ${TABLE}.prod_id ;;
  }

  dimension: settled_returns {
    type: string
    sql: ${TABLE}.settled_returns ;;
  }

  dimension: settled_stakes {
    type: string
    sql: cast(${TABLE}.settled_stakes as float64) ;;
  }

  dimension: shop_struck {
    type: string
    sql: ${TABLE}.shop_struck ;;
  }

  dimension: struck_stakes {
    hidden: yes
    type: number
    sql: cast(${TABLE}.struck_stakes as float64) ;;
  }

  dimension: trans_method {
    type: string
    sql: ${TABLE}.trans_method ;;
  }

  dimension: user_wallet {
    type: string
    sql: ${TABLE}.user_wallet ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: value_of_deposits {
    type: string
    sql: ${TABLE}.value_of_deposits ;;
  }

  dimension: value_of_withdrawals {
    type: string
    sql: ${TABLE}.value_of_withdrawals ;;
  }

  dimension: voucher_in {
    type: string
    sql: ${TABLE}.voucher_in ;;
  }


# MEASURES

  measure: count {
    type: count
    drill_fields: [username]
  }

  measure: number_customers {
    type: count_distinct
    sql: ${username} ;;
  }

  measure: active_customers {
    type: count_distinct
    sql: ${customer_seq} ;;
    filters: {
      field: struck_stakes
      value: ">0.001"
    }
  }

  measure: total_struck_stakes {
    type: sum
    sql: ${struck_stakes} ;;
    value_format_name: gbp
  }

  measure: total_settled_stakes {
    type: sum
    sql: ${settled_stakes} ;;
    value_format_name: gbp
  }

  measure: total_ggr {
    type: sum
    sql: ${gbp_ggr} ;;
    value_format_name: gbp
  }

  measure: total_no_of_slips_settled {
    type: sum
    sql: ${no_of_slips_settled} ;;
    value_format_name: id
  }
}
