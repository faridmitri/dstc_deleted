# The name of this view in Looker is "Journal Items"
view: journal_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dstc-analytics.oddo.odoo` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: last_update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_update ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension:label{
    type: string
    sql: ${TABLE}.label;;
  }

  dimension: account_manager_id {
    type: string
    sql: ${TABLE}.account_manager_id ;;
  }

  dimension: analytic_account_id {
    type: string
    sql: ${TABLE}.analytic_account_id ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_balance {
    type: sum
    sql: ${balance} ;;  }
  measure: average_balance {
    type: average
    sql: ${balance} ;;  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_date ;;
  }

  dimension: credit {
    type: number
    sql: ${TABLE}.credit ;;
  }

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: debit {
    type: number
    sql: ${TABLE}.debit ;;
  }

  dimension: journal_id {
    type: string
    sql: ${TABLE}.journal_id ;;
  }

  dimension: move_deal_id {
    type: string
    sql: ${TABLE}.move_deal_id ;;
  }

  dimension: move_id {
    type: string
    sql: ${TABLE}.move_id ;;
  }

  dimension: original_balance {
    type: number
    sql: ${TABLE}.original_balance ;;
  }

  dimension: original_currency {
    type: string
    sql: ${TABLE}.original_Currency ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
