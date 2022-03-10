# The name of this view in Looker is "State Pop"
view: state_pop {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset.State_pop`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " 2018 Population" in Explore.

  dimension: _2018_population {
    type: number
    sql: ${TABLE}._2018_Population ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__2018_population {
    type: sum
    sql: ${_2018_population} ;;
  }

  measure: average__2018_population {
    type: average
    sql: ${_2018_population} ;;
  }

  dimension: state {
    type: string
    primary_key: yes
    sql: ${TABLE}.State;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
