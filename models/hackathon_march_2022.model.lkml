# Define the database connection to be used for this model.
connection: "hackathon_traffic_data"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hackathon_march_2022_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hackathon_march_2022_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Hackathon March 2022"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: state_pop {}

explore: state_2017_census {}

explore: edu_spend {}

explore: transp_spend {}

explore: beet_farm {}

explore: human_capital_metrics {}

explore: vehicle_registrations {}

explore: state_codes {
  join: transp_spend {
    type: left_outer
    foreign_key: state_codes.state_name
    relationship: many_to_one
  }
  join: state_2017_census{
    type: left_outer
    foreign_key: state_codes.state_fips_code
    relationship:one_to_one}
}

explore: dec2021 {
  join: state_pop{
    type: left_outer
    foreign_key: state
    relationship: many_to_one
  }
  join: human_capital_metrics {
    type: left_outer
    foreign_key: state
    relationship: many_to_one
  }
  join: edu_spend {
    type: left_outer
    foreign_key: state
    relationship: many_to_one
  }
  join: state_codes {
    type: left_outer
    foreign_key: state
    relationship: many_to_one
  }
  join: state_2017_census {
    type: left_outer
    relationship: one_to_one
    sql_on: ${state_codes.state_fips_code} = ${state_2017_census.geo_id} ;;
  }
  join: transp_spend {
    type: left_outer
    relationship: one_to_one
    sql_on: ${state_codes.state_name} = ${transp_spend.state} ;;
  }
}
