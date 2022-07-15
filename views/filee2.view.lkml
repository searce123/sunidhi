view: filee2 {
  sql_table_name: `review_01.filee2`
    ;;

  dimension: buyer {
    type: string
    sql: ${TABLE}.Buyer ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.Coupon_Code ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension_group: date_paid {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_Paid ;;
  }

  dimension: delivery_city {
    type: string
    sql: ${TABLE}.Delivery_City ;;
  }

  dimension: delivery_country {
    type: string
    sql: ${TABLE}.Delivery_Country ;;
  }

  dimension: delivery_state {
    type: string
    sql: ${TABLE}.Delivery_State ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.Discount_Amount ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension_group: sale {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Sale_Date ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.Transaction_ID ;;
  }

  dimension: vat_paid_by_buyer {
    type: number
    sql: ${TABLE}.VAT_Paid_by_Buyer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
