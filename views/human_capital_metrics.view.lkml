# The name of this view in Looker is "Human Capital Metrics"
view: human_capital_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dunder-mifflin-hackathon.dataset.Human Capital Metrics`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " 2019 College Grad Rate" in Explore.

  dimension: _2019_college_grad_rate {
    type: number
    sql: ${TABLE}._2019_College_Grad_Rate ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__2019_college_grad_rate {
    type: sum
    sql: ${_2019_college_grad_rate} ;;
  }

  measure: average__2019_college_grad_rate {
    type: average
    sql: ${_2019_college_grad_rate} ;;
  }

  dimension: _2019_high_school_grad_rate {
    type: number
    sql: ${TABLE}._2019_High_School_Grad_Rate ;;
  }

  dimension: _2020_unemployment_rate {
    type: number
    sql: ${TABLE}._2020_Unemployment_Rate ;;
  }

  dimension: less_hs {
    type: number
    sql: ${TABLE}.Less_HS ;;
  }

  dimension: median_household_income__2019_ {
    type: number
    sql: ${TABLE}.Median_Household_Income__2019_ ;;
  }

  dimension: name {
    type: string
    primary_key: yes
    sql: ${TABLE}.Name ;;
  }

  dimension: no_insurance {
    type: number
    sql: ${TABLE}.No_Insurance ;;
  }

  dimension: not_in_labor {
    type: number
    sql: ${TABLE}.Not_in_labor ;;
  }

  dimension: poverty_100 {
    type: number
    sql: ${TABLE}.Poverty_100 ;;
  }

  dimension: poverty_150 {
    type: number
    sql: ${TABLE}.Poverty_150 ;;
  }

  dimension: under_level_1_literacy {
    type: number
    sql: ${TABLE}.Under_Level_1_Literacy ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
