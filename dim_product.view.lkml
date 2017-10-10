view: products {
  sql_table_name: etl.DimProduct ;;

  dimension: prod_group {
    type: string
    sql: ${TABLE}.Prod_Group ;;
  }

  dimension: prod_id {
    hidden: yes
    type: string
    sql: ${TABLE}.Prod_ID ;;
  }

  dimension: prod_major {
    type: string
    sql: UPPER(${TABLE}.Prod_Major) ;;
  }

  dimension: prod_name {
    type: string
    sql: ${TABLE}.Prod_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [prod_name]
  }
}
