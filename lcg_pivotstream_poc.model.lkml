connection: "lcg_pivotstream_poc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

case_sensitive: no

explore: customer_transactions {
  join: dim_customer {
    view_label: "Customers"
    sql_on: ${customer_transactions.customer_seq}=${dim_customer.customer_seq} ;;
    relationship: many_to_one
  }
  join: dim_shop {
    view_label: "Shops"
    sql_on: ${dim_customer.mc_signup_shop}=${dim_shop.shop} ;;
    relationship: one_to_one
  }
  join: dim_product {
    view_label: "Product"
    sql_on: ${customer_transactions.prod_id}=${dim_product.prod_id} ;;
    relationship: many_to_one
  }
}
