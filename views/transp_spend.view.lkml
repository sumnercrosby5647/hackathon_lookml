# The name of this view in Looker is "Transp Spend"
view: transp_spend {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dunder-mifflin-hackathon.dataset.Transp_spend`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Local Spending 2015" in Explore.

  dimension: local_spending_2015 {
    type: number
    sql: ${TABLE}.Local_Spending_2015 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_local_spending_2015 {
    type: sum
    sql: ${local_spending_2015} ;;
  }

  measure: average_local_spending_2015 {
    type: average
    sql: ${local_spending_2015} ;;
  }

  dimension: local_spending_2016 {
    type: number
    sql: ${TABLE}.Local_Spending_2016 ;;
  }

  dimension: local_spending_2017 {
    type: number
    sql: ${TABLE}.Local_Spending_2017 ;;
  }

  dimension: local_spending_2018 {
    type: number
    sql: ${TABLE}.Local_Spending_2018 ;;
  }

  dimension: local_spending_2019 {
    type: number
    sql: ${TABLE}.Local_Spending_2019 ;;
  }

  dimension: local_spending_2020 {
    type: number
    sql: ${TABLE}.Local_Spending_2020 ;;
  }

  dimension: local_spending_change_2016 {
    type: number
    sql: ${TABLE}.Local_Spending_Change_2016 ;;
  }

  dimension: local_spending_change_2017 {
    type: number
    sql: ${TABLE}.Local_Spending_Change_2017 ;;
  }

  dimension: local_spending_change_2018 {
    type: number
    sql: ${TABLE}.Local_Spending_Change_2018 ;;
  }

  dimension: local_spending_change_2019 {
    type: number
    sql: ${TABLE}.Local_Spending_Change_2019 ;;
  }

  dimension: local_spending_change_2020 {
    type: number
    sql: ${TABLE}.Local_Spending_Change_2020 ;;
  }

  dimension: state {
    type: string
    primary_key: yes
    sql: ${TABLE}.State ;;
  }

  dimension: state_spending_2015 {
    type: number
    sql: ${TABLE}.State_Spending_2015 ;;
  }

  dimension: state_spending_2016 {
    type: number
    sql: ${TABLE}.State_Spending_2016 ;;
  }

  dimension: state_spending_2017 {
    type: number
    sql: ${TABLE}.State_Spending_2017 ;;
  }

  dimension: state_spending_2018 {
    type: number
    sql: ${TABLE}.State_Spending_2018 ;;
  }

  dimension: state_spending_2019 {
    type: number
    sql: ${TABLE}.State_Spending_2019 ;;
  }

  dimension: state_spending_2020 {
    type: number
    sql: ${TABLE}.State_Spending_2020 ;;
  }

  dimension: state_spending_change_2016 {
    type: number
    sql: ${TABLE}.State_Spending_Change_2016 ;;
  }

  dimension: state_spending_change_2017 {
    type: number
    sql: ${TABLE}.State_Spending_Change_2017 ;;
  }

  dimension: state_spending_change_2018 {
    type: number
    sql: ${TABLE}.State_Spending_Change_2018 ;;
  }

  dimension: state_spending_change_2019 {
    type: number
    sql: ${TABLE}.State_Spending_Change_2019 ;;
  }

  dimension: state_spending_change_2020 {
    type: number
    sql: ${TABLE}.State_Spending_Change_2020 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
