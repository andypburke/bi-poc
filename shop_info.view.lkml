view: shop_info {
  derived_table: {
    sql: SELECT
        shops.Shop AS shops_shop,
        shops.Area  AS shops_area,
        shops.Region  AS shops_region
      FROM etl.DimShop  AS shops

      WHERE {% condition comparison_shop %} shops.Shop {% endcondition %}

      GROUP BY 1,2,3
      LIMIT 1
       ;;
  }

  filter: comparison_shop {
    view_label: "Customers Shops Transactions"
    type: string
  }

  dimension: shop {
    hidden: yes
    type: string
    sql: ${TABLE}.shops_shop ;;
  }

  dimension: area {
    hidden: yes
    type: string
    sql: ${TABLE}.shops_area ;;
  }

  dimension: region {
    hidden: yes
    type: string
    sql: ${TABLE}.shops_region ;;
  }

}
