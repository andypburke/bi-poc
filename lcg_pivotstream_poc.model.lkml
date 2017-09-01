connection: "lcg_pivotstream_poc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

case_sensitive: no

explore: transactions {
  join: customers {
    view_label: "Customers"
    sql_on: ${transactions.customer_seq}=${customers.customer_seq} ;;
    relationship: many_to_one
  }
  join: shops {
    view_label: "Shops"
    sql_on: ${customers.mc_signup_shop}=${shops.shop} ;;
    relationship: one_to_one
  }
  join: products {
    view_label: "Product"
    sql_on: ${transactions.prod_id}=${products.prod_id} ;;
    relationship: many_to_one
  }
  join: shop_info {
    type: cross
    relationship: one_to_one
  }

}

explore: customers {}
