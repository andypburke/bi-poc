view: dim_bonus {
  sql_table_name: etl.DimBonus ;;

  dimension: bonus_category {
    type: string
    sql: ${TABLE}.BONUS_CATEGORY ;;
  }

  dimension: bonus_code {
    type: string
    sql: ${TABLE}.BONUS_CODE ;;
  }

  dimension: bonus_description {
    type: string
    sql: ${TABLE}.BONUS_DESCRIPTION ;;
  }

  dimension: bonus_group {
    type: string
    sql: ${TABLE}.BONUS_GROUP ;;
  }

  dimension: bonus_id {
    type: string
    sql: ${TABLE}.BONUS_ID ;;
  }

  dimension: bonus_name {
    type: string
    sql: ${TABLE}.BONUS_NAME ;;
  }

  dimension: bonus_product_vertical {
    type: string
    sql: ${TABLE}.BONUS_PRODUCT_VERTICAL ;;
  }

  dimension: bonus_seq {
    type: string
    sql: ${TABLE}.BONUS_SEQ ;;
  }

  dimension: bonus_status {
    type: string
    sql: ${TABLE}.BONUS_STATUS ;;
  }

  dimension: expiry_date {
    type: string
    sql: ${TABLE}.EXPIRY_DATE ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: vip_bonus_flag {
    type: string
    sql: ${TABLE}.VIP_BONUS_FLAG ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [bonus_name]
  }
}
