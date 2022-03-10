# The name of this view in Looker is "Vehicle Registrations"
view: vehicle_registrations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset.Vehicle Registrations`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Auto" in Explore.

  dimension: auto {
    type: number
    sql: ${TABLE}.Auto ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_auto {
    type: sum
    sql: ${auto} ;;
  }

  measure: average_auto {
    type: average
    sql: ${auto} ;;
  }

  dimension: bus {
    type: number
    sql: ${TABLE}.Bus ;;
  }

  dimension: motorcycle {
    type: number
    sql: ${TABLE}.Motorcycle ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: truck {
    type: number
    sql: ${TABLE}.Truck ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
