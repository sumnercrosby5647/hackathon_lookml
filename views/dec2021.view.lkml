# The name of this view in Looker is "Dec2021"
view: dec2021 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dunder-mifflin-hackathon.dataset.dec2021`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Airport Code" in Explore.

  dimension: airport_code {
    type: string
    sql: ${TABLE}.AIRPORT_CODE ;;
  }

  dimension: amenity {
    type: yesno
    sql: ${TABLE}.AMENITY ;;
  }

  dimension: astronomical_twilight {
    type: string
    sql: ${TABLE}.ASTRONOMICAL_TWILIGHT ;;
  }

  dimension: bump {
    type: yesno
    sql: ${TABLE}.BUMP ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: civil_twilight {
    type: string
    sql: ${TABLE}.CIVIL_TWILIGHT ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.COUNTY ;;
  }

  dimension: crossing {
    type: yesno
    sql: ${TABLE}.CROSSING ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: distance_miles {
    type: number
    sql: ${TABLE}.DISTANCE_MILES ;;
  }

  dimension: end_lat {
    type: number
    sql: ${TABLE}.END_LAT ;;
  }

  dimension: end_lng {
    type: number
    sql: ${TABLE}.END_LNG ;;
  }

  dimension: end_location {
    type: location
    sql_latitude:${TABLE}.END_LAT ;;
    sql_longitude:${TABLE}.END_LNG ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.END_TIME ;;
  }

  dimension: give_way {
    type: yesno
    sql: ${TABLE}.GIVE_WAY ;;
  }

  dimension: humidity_pct {
    type: number
    sql: ${TABLE}.HUMIDITY_PCT ;;
  }

  dimension: junction {
    type: yesno
    sql: ${TABLE}.JUNCTION ;;
  }

  dimension: nautical_twilight {
    type: string
    sql: ${TABLE}.NAUTICAL_TWILIGHT ;;
  }

  dimension: no_exit {
    type: yesno
    sql: ${TABLE}.NO_EXIT ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.NUMBER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number {
    type: sum
    sql: ${number} ;;
  }

  measure: average_number {
    type: average
    sql: ${number} ;;
  }

  dimension: precipitation_in {
    type: number
    sql: ${TABLE}.PRECIPITATION_IN ;;
  }

  dimension: pressure_in {
    type: number
    sql: ${TABLE}.PRESSURE_IN ;;
  }

  dimension: railway {
    type: yesno
    sql: ${TABLE}.RAILWAY ;;
  }

  dimension: roundabout {
    type: yesno
    sql: ${TABLE}.ROUNDABOUT ;;
  }

  dimension: severity {
    type: number
    sql: ${TABLE}.SEVERITY ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.SIDE ;;
  }

  dimension: start_lat {
    type: number
    sql: ${TABLE}.START_LAT ;;
  }

  dimension: start_lng {
    type: number
    sql: ${TABLE}.START_LNG ;;
  }

  dimension: start_location {
    type: location
    sql_latitude:${TABLE}.START_LAT ;;
    sql_longitude:${TABLE}.START_LNG ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.START_TIME ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: station {
    type: yesno
    sql: ${TABLE}.STATION ;;
  }

  dimension: stop {
    type: yesno
    sql: ${TABLE}.STOP ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.STREET ;;
  }

  dimension: sunrise_sunset {
    type: string
    sql: ${TABLE}.SUNRISE_SUNSET ;;
  }

  dimension: temperature_f {
    type: number
    sql: ${TABLE}.TEMPERATURE_F ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
  }

  dimension: traffic_calming {
    type: yesno
    sql: ${TABLE}.TRAFFIC_CALMING ;;
  }

  dimension: traffic_signal {
    type: yesno
    sql: ${TABLE}.TRAFFIC_SIGNAL ;;
  }

  dimension: turning_loop {
    type: yesno
    sql: ${TABLE}.TURNING_LOOP ;;
  }

  dimension: visibility_miles {
    type: number
    sql: ${TABLE}.VISIBILITY_MILES ;;
  }

  dimension: weather_condition {
    type: string
    sql: ${TABLE}.WEATHER_CONDITION ;;
  }

  dimension_group: weather_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.WEATHER_TIMESTAMP ;;
  }

  dimension: wind_chill_f {
    type: number
    sql: ${TABLE}.WIND_CHILL_F ;;
  }

  dimension: wind_direction {
    type: string
    sql: ${TABLE}.WIND_DIRECTION ;;
  }

  dimension: wind_speed_mph {
    type: number
    sql: ${TABLE}.WIND_SPEED_MPH ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.ZIPCODE ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
