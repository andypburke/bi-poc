connection: "lcg_pivotstream_poc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# case_sensitive: no

datagroup: midnight_refresh {
  sql_trigger: select CURRENT_DATE() ;;
}

explore: transactions {
  always_filter: {
    filters: {
      field: transactions.transaction_date
      value: "2017-06"
    }
  }

  join: customer_signupshop {
    #View label is applied at the dimension level
    sql_on: ${transactions.customer_seq}=${customer_signupshop.customer_seq} ;;
    relationship: many_to_one
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

#   join: customers {
#     view_label: "Customers"
#     sql_on: ${transactions.customer_seq}=${customers.customer_seq} ;;
#     relationship: many_to_one
#   }
#   join: shops {
#     view_label: "Shops"
#     sql_on: ${customers.mc_signup_shop}=${shops.shop} ;;
#     relationship: one_to_one
#   }
}

explore: customers {
  description: "Use this explore for Customer information without transactions"
}

explore: shops {
  description: "Use this explore for Shops information without transactions"
  join: shop_info {
    view_label: "Shops"
    type: cross
    relationship: one_to_one
  }
}


explore: customers_shops_transactions {
  label: "Denormalized Transactions"
  always_filter: {
    filters: {
      field: customers_shops_transactions.transaction_date
      value: "2017-06"
      }
    }
  join: products {
    view_label: "Product"
    sql_on: ${customers_shops_transactions.prod_id}=${products.prod_id} ;;
    relationship: many_to_one
  }
  join: shop_info {
    type: cross
    relationship: one_to_one
  }
}
