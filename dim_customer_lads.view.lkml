view: dim_customer_lads {
  sql_table_name: etl.DimCustomer_Lads ;;

  dimension: account_status {
    type: string
    sql: ${TABLE}.account_status ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.account_type ;;
  }

  dimension: brand_seq {
    type: string
    sql: ${TABLE}.brand_seq ;;
  }

  dimension: connect_card_number {
    type: string
    sql: ${TABLE}.connect_card_number ;;
  }

  dimension: current_fobt_vip_flag {
    type: string
    sql: ${TABLE}.current_fobt_vip_flag ;;
  }

  dimension: current_ims_vip_level {
    type: string
    sql: ${TABLE}.current_ims_vip_level ;;
  }

  dimension: current_otc_vip_flag {
    type: string
    sql: ${TABLE}.current_otc_vip_flag ;;
  }

  dimension: current_risk_band {
    type: string
    sql: ${TABLE}.current_risk_band ;;
  }

  dimension: current_risk_rating {
    type: string
    sql: ${TABLE}.current_risk_rating ;;
  }

  dimension: cust_shop_id {
    type: string
    sql: ${TABLE}.cust_shop_id ;;
  }

  dimension: customer_seq {
    type: string
    sql: ${TABLE}.customer_seq ;;
  }

  dimension: date_of_birth {
    type: string
    sql: ${TABLE}.date_of_birth ;;
  }

  dimension: dcms_src_id {
    type: string
    sql: ${TABLE}.dcms_src_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_card_reg_date {
    type: string
    sql: ${TABLE}.first_card_reg_date ;;
  }

  dimension: first_deposit_channel {
    type: string
    sql: ${TABLE}.first_deposit_channel ;;
  }

  dimension: first_deposit_date {
    type: string
    sql: ${TABLE}.first_deposit_date ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_online_bet_date {
    type: string
    sql: ${TABLE}.first_online_bet_date ;;
  }

  dimension: first_overall_bet_date {
    type: string
    sql: ${TABLE}.first_overall_bet_date ;;
  }

  dimension: first_prod_group {
    type: string
    sql: ${TABLE}.first_prod_group ;;
  }

  dimension: first_retail_bet_date {
    type: string
    sql: ${TABLE}.first_retail_bet_date ;;
  }

  dimension: ims_id {
    type: string
    sql: ${TABLE}.ims_id ;;
  }

  dimension: kyc_failed_date {
    type: string
    sql: ${TABLE}.kyc_failed_date ;;
  }

  dimension: kyc_in_progress_date {
    type: string
    sql: ${TABLE}.kyc_in_progress_date ;;
  }

  dimension: kyc_passed_date {
    type: string
    sql: ${TABLE}.kyc_passed_date ;;
  }

  dimension: kyc_status {
    type: string
    sql: ${TABLE}.kyc_status ;;
  }

  dimension: last_activity_date {
    type: string
    sql: ${TABLE}.last_activity_date ;;
  }

  dimension: last_login_date {
    type: string
    sql: ${TABLE}.last_login_date ;;
  }

  dimension: last_online_bet_pre_connect {
    type: string
    sql: ${TABLE}.last_online_bet_pre_connect ;;
  }

  dimension: last_verification_date {
    type: string
    sql: ${TABLE}.last_verification_date ;;
  }

  dimension: mc_cust_type {
    type: string
    sql: ${TABLE}.mc_cust_type ;;
  }

  dimension: mc_reg_date {
    type: string
    sql: ${TABLE}.mc_reg_date ;;
  }

  dimension: mc_signup_shop {
    type: string
    sql: ${TABLE}.mc_signup_shop ;;
  }

  dimension: ndp_comment_1 {
    type: string
    sql: ${TABLE}.ndp_comment_1 ;;
  }

  dimension: ndp_comment_2 {
    type: string
    sql: ${TABLE}.ndp_comment_2 ;;
  }

  dimension: nom_de_plume_name {
    type: string
    sql: ${TABLE}.nom_de_plume_name ;;
  }

  dimension: online_reg_date {
    type: string
    sql: ${TABLE}.online_reg_date ;;
  }

  dimension: opted_in_for_email {
    type: string
    sql: ${TABLE}.opted_in_for_email ;;
  }

  dimension: opted_in_for_sms {
    type: string
    sql: ${TABLE}.opted_in_for_sms ;;
  }

  dimension: opted_in_for_telephone {
    type: string
    sql: ${TABLE}.opted_in_for_telephone ;;
  }

  dimension: optout_date_for_email {
    type: string
    sql: ${TABLE}.optout_date_for_email ;;
  }

  dimension: optout_date_for_sms {
    type: string
    sql: ${TABLE}.optout_date_for_sms ;;
  }

  dimension: optout_date_for_telephone {
    type: string
    sql: ${TABLE}.optout_date_for_telephone ;;
  }

  dimension: overall_vip {
    type: string
    sql: ${TABLE}.overall_vip ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: predicted_churn_value {
    type: string
    sql: ${TABLE}.predicted_churn_value ;;
  }

  dimension: predicted_ltv {
    type: string
    sql: ${TABLE}.predicted_ltv ;;
  }

  dimension: registration_platform {
    type: string
    sql: ${TABLE}.registration_platform ;;
  }

  dimension: second_deposit_date {
    type: string
    sql: ${TABLE}.second_deposit_date ;;
  }

  dimension: second_online_bet_date {
    type: string
    sql: ${TABLE}.second_online_bet_date ;;
  }

  dimension: signup_shop {
    type: string
    sql: ${TABLE}.signup_shop ;;
  }

  dimension: surname {
    type: string
    sql: ${TABLE}.surname ;;
  }

  dimension: third_deposit_date {
    type: string
    sql: ${TABLE}.third_deposit_date ;;
  }

  dimension: third_online_bet_date {
    type: string
    sql: ${TABLE}.third_online_bet_date ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [nom_de_plume_name, surname, first_name, username]
  }
}
