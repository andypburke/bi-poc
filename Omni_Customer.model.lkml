connection: "lcg_pivotstream_poc"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore : OmniModel
{
from:  transactions
  join: customers {
    view_label: "Customers"
    sql_on: ${OmniModel.customer_seq}=${customers.customer_seq} ;;
    relationship: many_to_one
  }
  join: shops {
    view_label: "Shops"
    sql_on: ${customers.mc_signup_shop}=${shops.shop} ;;
    relationship: one_to_one
  }
  join: products {
    view_label: "Product"
    sql_on: ${OmniModel.prod_id}=${products.prod_id} ;;
    relationship: many_to_one
  }
}
