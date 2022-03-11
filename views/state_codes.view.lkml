# The name of this view in Looker is "State Codes"
view: state_codes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dunder-mifflin-hackathon.dataset.state_codes`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "State Fips Code" in Explore.

  dimension: state_fips_code {
    type: string
    sql: ${TABLE}.state_fips_code ;;
  }

  dimension: state_gnisid {
    type: string
    sql: ${TABLE}.state_gnisid ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: state_postal_abbreviation {
    type: string
    primary_key: yes
    sql: ${TABLE}.state_postal_abbreviation ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
