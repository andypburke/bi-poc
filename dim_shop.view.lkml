view: shops {
  sql_table_name: etl.DimShop ;;

  dimension: area {
    type: string
    sql: ${TABLE}.Area ;;
    drill_fields: [shop]
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: competitive_flag {
    type: string
    sql: ${TABLE}.Competitive_flag ;;
  }

  dimension: competitive_group {
    type: string
    sql: ${TABLE}.Competitive_group ;;
  }

  dimension: l4l_flag {
    type: string
    sql: ${TABLE}.l4l_flag ;;
  }

  dimension: no_of_competitors {
    type: string
    sql: ${TABLE}.No_of_competitors ;;
  }

  dimension: no_of_ssbts {
    type: string
    sql: ${TABLE}.No_of_ssbts ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.Postcode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
    drill_fields: [subregion,area,shop]
  }

  dimension: shop {
    type: string
    sql: ${TABLE}.Shop ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: subregion {
    type: string
    sql: ${TABLE}.Subregion ;;
    drill_fields: [area,shop]
  }

  measure: count {
    type: count
    drill_fields: [shop]
  }
}
