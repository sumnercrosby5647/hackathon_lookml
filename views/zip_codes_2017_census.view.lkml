# The name of this view in Looker is "Zip Codes 2017 Census"
view: zip_codes_2017_census {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dunder-mifflin-hackathon.dataset.zip_codes_2017_census`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Aggregate Travel Time to Work" in Explore.

  dimension: aggregate_travel_time_to_work {
    type: number
    description: "Aggregate travel time to work. The total number of minutes every worker in a geographic area over the age of 16 who did not work from home spent spent commuting to work in one day"
    sql: ${TABLE}.aggregate_travel_time_to_work ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_aggregate_travel_time_to_work {
    type: sum
    sql: ${aggregate_travel_time_to_work} ;;
  }

  measure: average_aggregate_travel_time_to_work {
    type: average
    sql: ${aggregate_travel_time_to_work} ;;
  }

  dimension: amerindian_including_hispanic {
    type: number
    description: "American Indian including Hispanic"
    sql: ${TABLE}.amerindian_including_hispanic ;;
  }

  dimension: amerindian_pop {
    type: number
    description: "American Indian and Alaska Native Population. The number of people identifying as American Indian or Alaska native in each geography."
    sql: ${TABLE}.amerindian_pop ;;
  }

  dimension: armed_forces {
    type: number
    description: "Population in Armed Forces. The number of people in each geography who are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard)."
    sql: ${TABLE}.armed_forces ;;
  }

  dimension: asian_including_hispanic {
    type: number
    description: "Asian including Hispanic"
    sql: ${TABLE}.asian_including_hispanic ;;
  }

  dimension: asian_male_45_54 {
    type: number
    description: "Asian Men age 45 to 54"
    sql: ${TABLE}.asian_male_45_54 ;;
  }

  dimension: asian_male_55_64 {
    type: number
    description: "Asian Men age 55 to 64"
    sql: ${TABLE}.asian_male_55_64 ;;
  }

  dimension: asian_pop {
    type: number
    description: "Asian Population. The number of people identifying as Asian, non-Hispanic in each geography."
    sql: ${TABLE}.asian_pop ;;
  }

  dimension: associates_degree {
    type: number
    description: "Population Completed Associate's Degree. The number of people in a geographic area over the age of 25 who obtained a associate's degree, and did not complete a more advanced degree."
    sql: ${TABLE}.associates_degree ;;
  }

  dimension: bachelors_degree {
    type: number
    description: "Population Completed Bachelor's Degree. The number of people in a geographic area over the age of 25 who obtained a bachelor's degree, and did not complete a more advanced degree."
    sql: ${TABLE}.bachelors_degree ;;
  }

  dimension: bachelors_degree_2 {
    type: number
    description: "Population who completed a bachelor's degree. From mobility table."
    sql: ${TABLE}.bachelors_degree_2 ;;
  }

  dimension: bachelors_degree_or_higher_25_64 {
    type: number
    description: "Population with Bachelors Degree or Higher, Ages 25 to 64. The number of people in each geography who are between the ages of 25 and 64 who have attained a bachelors degree or higher."
    sql: ${TABLE}.bachelors_degree_or_higher_25_64 ;;
  }

  dimension: black_including_hispanic {
    type: number
    description: "Black including Hispanic"
    sql: ${TABLE}.black_including_hispanic ;;
  }

  dimension: black_male_45_54 {
    type: number
    description: "Black Men age 45 to 54"
    sql: ${TABLE}.black_male_45_54 ;;
  }

  dimension: black_male_55_64 {
    type: number
    description: "Black Men age 55 to 64"
    sql: ${TABLE}.black_male_55_64 ;;
  }

  dimension: black_pop {
    type: number
    description: "Black or African American Population. The number of people identifying as black or African American, non-Hispanic in each geography."
    sql: ${TABLE}.black_pop ;;
  }

  dimension: children {
    type: number
    description: "Children under 18 Years of Age. The number of people within each geography who are under 18 years of age."
    sql: ${TABLE}.children ;;
  }

  dimension: children_in_single_female_hh {
    type: number
    description: "Children under 18 years of age in single female-led household"
    sql: ${TABLE}.children_in_single_female_hh ;;
  }

  dimension: civilian_labor_force {
    type: number
    description: "Population in Civilian Labor Force. The number of civilians 16 years and over in each geography who can be classified as either \"employed\" or \"unemployed\" below."
    sql: ${TABLE}.civilian_labor_force ;;
  }

  dimension: commute_10_14_mins {
    type: number
    description: "Number of workers with a commute between 10 and 14 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 10 and 14 minutes."
    sql: ${TABLE}.commute_10_14_mins ;;
  }

  dimension: commute_15_19_mins {
    type: number
    description: "Number of workers with a commute between 15 and 19 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 15 and 19 minutes."
    sql: ${TABLE}.commute_15_19_mins ;;
  }

  dimension: commute_20_24_mins {
    type: number
    description: "Number of workers with a commute between 20 and 24 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 20 and 24 minutes."
    sql: ${TABLE}.commute_20_24_mins ;;
  }

  dimension: commute_25_29_mins {
    type: number
    description: "Number of workers with a commute between 25 and 29 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 25 and 29 minutes."
    sql: ${TABLE}.commute_25_29_mins ;;
  }

  dimension: commute_30_34_mins {
    type: number
    description: "Number of workers with a commute between 30 and 34 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 30 and 34 minutes."
    sql: ${TABLE}.commute_30_34_mins ;;
  }

  dimension: commute_35_39_mins {
    type: number
    description: "Number of workers with a commute between 35 and 39 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 35 and 39 minutes."
    sql: ${TABLE}.commute_35_39_mins ;;
  }

  dimension: commute_35_44_mins {
    type: number
    description: "Number of workers with a commute between 35 and 44 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 35 and 44 minutes."
    sql: ${TABLE}.commute_35_44_mins ;;
  }

  dimension: commute_40_44_mins {
    type: number
    description: "Number of workers with a commute between 40 and 44 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 40 and 44 minutes."
    sql: ${TABLE}.commute_40_44_mins ;;
  }

  dimension: commute_45_59_mins {
    type: number
    description: "Number of workers with a commute between 45 and 59 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 45 and 59 minutes."
    sql: ${TABLE}.commute_45_59_mins ;;
  }

  dimension: commute_5_9_mins {
    type: number
    description: "Number of workers with a commute between 5 and 9 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 5 and 9 minutes."
    sql: ${TABLE}.commute_5_9_mins ;;
  }

  dimension: commute_60_89_mins {
    type: number
    description: "Number of workers with a commute between 60 and 89 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in between 60 and 89 minutes ."
    sql: ${TABLE}.commute_60_89_mins ;;
  }

  dimension: commute_60_more_mins {
    type: number
    description: "Number of workers with a commute of over 60 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute in over 60 minutes."
    sql: ${TABLE}.commute_60_more_mins ;;
  }

  dimension: commute_90_more_mins {
    type: number
    description: "Number of workers with a commute of more than 90 minutes. The number of workers in a geographic area over the age of 16 who do not work from home and commute more than 90 minutes."
    sql: ${TABLE}.commute_90_more_mins ;;
  }

  dimension: commute_less_10_mins {
    type: number
    description: "Number of workers with less than 10 minute commute. The number of workers in a geographic area over the age of 16 who do not work from home and commute in less than 10 minutes."
    sql: ${TABLE}.commute_less_10_mins ;;
  }

  dimension: commuters_16_over {
    type: number
    description: "Workers age 16 and over who do not work from home. The number of workers in a geographic area over the age of 16 who do not work from home"
    sql: ${TABLE}.commuters_16_over ;;
  }

  dimension: commuters_by_bus {
    type: number
    description: "Commuters by Bus. The number of workers age 16 years and over within a geographic area who primarily traveled to work by bus.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work.  This is a subset of workers who commuted by public transport."
    sql: ${TABLE}.commuters_by_bus ;;
  }

  dimension: commuters_by_car_truck_van {
    type: number
    description: "Commuters by Car, Truck, or Van. The number of workers age 16 years and over within  a geographic area who primarily traveled to work by car, truck or  van.  This is the principal mode of travel or type of conveyance,  by distance rather than time, that the worker usually used to get  from home to work."
    sql: ${TABLE}.commuters_by_car_truck_van ;;
  }

  dimension: commuters_by_carpool {
    type: number
    description: "Commuters by Carpool. The number of workers age 16 years and over within a geographic area who primarily traveled to work by carpool.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work."
    sql: ${TABLE}.commuters_by_carpool ;;
  }

  dimension: commuters_by_public_transportation {
    type: number
    description: "Commuters by Public Transportation. The number of workers age 16 years and over within a geographic area who primarily traveled to work by public transportation.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work."
    sql: ${TABLE}.commuters_by_public_transportation ;;
  }

  dimension: commuters_by_subway_or_elevated {
    type: number
    description: "Commuters by Subway or Elevated. The number of workers age 16 years and over within a geographic area who primarily traveled to work by subway or elevated train.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work.  This is a subset of workers who commuted by public transport."
    sql: ${TABLE}.commuters_by_subway_or_elevated ;;
  }

  dimension: commuters_drove_alone {
    type: number
    description: "Commuters who drove alone. The number of workers age 16 years and over within a geographic area who primarily traveled by car driving alone. This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work."
    sql: ${TABLE}.commuters_drove_alone ;;
  }

  dimension: different_house_year_ago_different_city {
    type: number
    description: "Lived in a different house one year ago in a different city. All people in a geographic area who lived in a different city within the year prior to the survey."
    sql: ${TABLE}.different_house_year_ago_different_city ;;
  }

  dimension: different_house_year_ago_same_city {
    type: number
    description: "Lived in a different house one year ago in the same city. All people in a geographic area who lived in the same city but moved to a different unit within the year prior to the survey."
    sql: ${TABLE}.different_house_year_ago_same_city ;;
  }

  dimension: do_date {
    type: string
    sql: ${TABLE}.do_date ;;
  }

  dimension: dwellings_10_to_19_units {
    type: number
    description: "Apartment buildings with 10 to 19 units"
    sql: ${TABLE}.dwellings_10_to_19_units ;;
  }

  dimension: dwellings_1_units_attached {
    type: number
    description: "Single-family (one unit) attached dwellings. This is a 1-unit structure that has one or more walls extending from ground to roof separating it from adjoining structures. In row houses (sometimes called townhouses), double houses, or houses attached to nonresidential structures, each house is a separate, attached structure if the dividing or common wall goes from ground to roof."
    sql: ${TABLE}.dwellings_1_units_attached ;;
  }

  dimension: dwellings_1_units_detached {
    type: number
    description: "Single-family (one unit) detached dwellings. This is a 1-unit structure detached from any other house, that is, with open space on all four sides. Such structures are considered detached even if they have an adjoining shed or garage. A one-family house that contains a business is considered detached as long as the building has open space on all four sides. Mobile homes to which one or more permanent rooms have been added or built also are included."
    sql: ${TABLE}.dwellings_1_units_detached ;;
  }

  dimension: dwellings_20_to_49_units {
    type: number
    description: "Apartment buildings with 20 to 49 units"
    sql: ${TABLE}.dwellings_20_to_49_units ;;
  }

  dimension: dwellings_2_units {
    type: number
    description: "Two-family (two unit) dwellings"
    sql: ${TABLE}.dwellings_2_units ;;
  }

  dimension: dwellings_3_to_4_units {
    type: number
    description: "Multifamily dwellings with three to 4 units"
    sql: ${TABLE}.dwellings_3_to_4_units ;;
  }

  dimension: dwellings_50_or_more_units {
    type: number
    description: "Apartment buildings with 50 or more units"
    sql: ${TABLE}.dwellings_50_or_more_units ;;
  }

  dimension: dwellings_5_to_9_units {
    type: number
    description: "Apartment buildings with 5 to 9 units"
    sql: ${TABLE}.dwellings_5_to_9_units ;;
  }

  dimension: employed_agriculture_forestry_fishing_hunting_mining {
    type: number
    description: "Workers employed in firms in agriculture, forestry, fishing, hunting, or mining. The Agriculture, Forestry, Fishing and Hunting sector comprises establishments primarily engaged in growing crops, raising animals, harvesting timber, and harvesting fish and other animals from a farm, ranch, or their natural habitats."
    sql: ${TABLE}.employed_agriculture_forestry_fishing_hunting_mining ;;
  }

  dimension: employed_arts_entertainment_recreation_accommodation_food {
    type: number
    description: "Workers employed in firms in arts, entertainment, recreation, accommodation and food services. The Arts, Entertainment, and Recreation sector includes a wide range of establishments that operate facilities or provide services to meet varied cultural, entertainment, and recreational interests of their patrons. This sector comprises (1) establishments that are involved in producing, promoting, or participating in live performances, events, or exhibits intended for public viewing; (2) establishments that preserve and exhibit objects and sites of historical, cultural, or educational interest; and (3) establishments that operate facilities or provide services that enable patrons to participate in recreational activities or pursue amusement, hobby, and leisure-time interests."
    sql: ${TABLE}.employed_arts_entertainment_recreation_accommodation_food ;;
  }

  dimension: employed_construction {
    type: number
    description: "Workers employed in firms in construction. The Construction sector comprises establishments primarily engaged in the construction of buildings or engineering projects (e.g., highways and utility systems). Construction work done may include new work, additions, alterations, or maintenance and repairs."
    sql: ${TABLE}.employed_construction ;;
  }

  dimension: employed_education_health_social {
    type: number
    description: "Workers employed in firms in educational services, health care, and social assistance. Outpatient health services, other than hospital care, including: public health administration; research and education; categorical health programs; treatment and immunization clinics; nursing; environmental health activities such as air and water pollution control; ambulance service if provided separately from fire protection services, and other general public health activities such as mosquito abatement. School health services provided by health agencies (rather than school agencies) are included here. Sewage treatment operations are classified under Sewerage."
    sql: ${TABLE}.employed_education_health_social ;;
  }

  dimension: employed_finance_insurance_real_estate {
    type: number
    description: "Workers employed in firms in finance, insurance, real estate and rental and leasing. The Real Estate and Rental and Leasing sector comprises establishments primarily engaged in renting, leasing, or otherwise allowing the use of tangible or intangible assets, and establishments providing related services. The major portion of this sector comprises establishments that rent, lease, or otherwise allow the use of their own assets by others. The assets may be tangible, as is the case of real estate and equipment, or intangible, as is the case with patents and trademarks."
    sql: ${TABLE}.employed_finance_insurance_real_estate ;;
  }

  dimension: employed_information {
    type: number
    description: "Workers employed in firms in information. The Information sector comprises establishments engaged in the following processes: (a) producing and distributing information and cultural products, (b) providing the means to transmit or distribute these products as well as data or communications, and (c) processing data. Included are the publishing industries, the motion picture and sound recording industries; the broadcasting industries, the telecommunications industries; Web search portals, data processing industries, and the information services industries."
    sql: ${TABLE}.employed_information ;;
  }

  dimension: employed_manufacturing {
    type: number
    description: "Workers employed in firms in manufacturing. The Manufacturing sector comprises establishments engaged in the mechanical, physical, or chemical transformation of materials, substances, or components into new products."
    sql: ${TABLE}.employed_manufacturing ;;
  }

  dimension: employed_other_services_not_public_admin {
    type: number
    description: "Workers employed in firms in other services except public administration. The Other Services (Except Public Administration) sector comprises establishments engaged in providing services not specifically provided for elsewhere in the classification system. Establishments in this sector are primarily engaged in activities such as equipment and machinery repairing, promoting or administering religious activities, grantmaking, advocacy, and providing drycleaning and laundry services, personal care services, death care services, pet care services, photofinishing services, temporary parking services, and dating services. Private households that engage in employing workers on or about the premises in activities primarily concerned with the operation of the household are included in this sector."
    sql: ${TABLE}.employed_other_services_not_public_admin ;;
  }

  dimension: employed_pop {
    type: number
    description: "Employed Population. The number of civilians 16 years old and over in each geography who either (1) were \"at work,\" that is, those who did any work at all during the reference week as paid employees, worked in their own business or profession, worked on their own farm, or worked 15 hours or more as unpaid workers on a family farm or in a family business; or (2) were \"with a job but not at work,\" that is, those who did not work during the reference week but had jobs or businesses from which they were temporarily absent due to illness, bad weather, industrial dispute, vacation, or other personal reasons. Excluded from the employed are people whose only activity consisted of work around the house or unpaid volunteer work for religious, charitable, and similar organizations; also excluded are all institutionalized people and people on active duty in the United States Armed Forces."
    sql: ${TABLE}.employed_pop ;;
  }

  dimension: employed_public_administration {
    type: number
    description: "Workers employed in firms in public administration. The Public Administration sector consists of establishments of federal, state, and local government agencies that administer, oversee, and manage public programs and have executive, legislative, or judicial authority over other institutions within a given area. These agencies also set policy, create laws, adjudicate civil and criminal legal cases, provide for public safety and for national defense. In general, government establishments in the public administration sector oversee governmental programs and activities that are not performed by private establishments."
    sql: ${TABLE}.employed_public_administration ;;
  }

  dimension: employed_retail_trade {
    type: number
    description: "Workers employed in firms in retail trade. The Retail Trade sector comprises establishments engaged in retailing merchandise, generally without transformation, and rendering services incidental to the sale of merchandise. The retailing process is the final step in the distribution of merchandise; retailers are, therefore, organized to sell merchandise in small quantities to the general public."
    sql: ${TABLE}.employed_retail_trade ;;
  }

  dimension: employed_science_management_admin_waste {
    type: number
    description: "Workers employed in firms in professional scientific, management, administrative and waste management services. The Administrative and Support and Waste Management and Remediation Services sector comprises establishments performing routine support activities for the day-to-day operations of other organizations. The establishments in this sector specialize in one or more of these support activities and provide these services to clients in a variety of industries and, in some cases, to households. Activities performed include office administration, hiring and placing of personnel, document preparation and similar clerical services, solicitation, collection, security and surveillance services, cleaning, and waste disposal services."
    sql: ${TABLE}.employed_science_management_admin_waste ;;
  }

  dimension: employed_transportation_warehousing_utilities {
    type: number
    description: "Workers employed in firms in transportation, warehousing, and utilities. The Transportation and Warehousing sector includes industries providing transportation of passengers and cargo, warehousing and storage for goods, scenic and sightseeing transportation, and support activities related to modes of transportation. The modes of transportation are air, rail, water, road, and pipeline."
    sql: ${TABLE}.employed_transportation_warehousing_utilities ;;
  }

  dimension: employed_wholesale_trade {
    type: number
    description: "Workers employed in firms in wholesale trade. The Wholesale Trade sector comprises establishments engaged in wholesaling merchandise, generally without transformation, and rendering services incidental to the sale of merchandise. The wholesaling process is an intermediate step in the distribution of merchandise. Wholesalers are organized to sell or arrange the purchase or sale of (a) goods for resale (i.e., goods sold to other wholesalers or retailers), (b) capital or durable nonconsumer goods, and (c) raw and intermediate materials and supplies used in production."
    sql: ${TABLE}.employed_wholesale_trade ;;
  }

  dimension: families_with_young_children {
    type: number
    description: "Families with young children (under 6 years of age)"
    sql: ${TABLE}.families_with_young_children ;;
  }

  dimension: family_households {
    type: number
    description: "Family Households. A family consists of a householder and one or more other people living in the same household who are related to the householder by birth, marriage, or adoption. All people in a household who are related to the householder are regarded as members of his or her family. A family household may contain people not related to the householder, but those people are not included as part of the family of the householder in tabulations. Thus, the number of family households is equal to the number of families, but family households may include more members than do families. A household can contain only one family for purposes of tabulations. Not all households contain families since a household may be comprised of a group of unrelated people or of one person living alone -- these are called nonfamily households. Families are classified by type as either a \"married couple family\" or \"other family\" according to the sex of the householder and the presence of relatives. The data on family type are based ..."
    sql: ${TABLE}.family_households ;;
  }

  dimension: father_in_labor_force_one_parent_families_with_young_children {
    type: number
    description: "One-parent families, father in labor force, with young children (under 6 years of age)"
    sql: ${TABLE}.father_in_labor_force_one_parent_families_with_young_children ;;
  }

  dimension: father_one_parent_families_with_young_children {
    type: number
    description: "One-parent families, father, with young children (under 6 years of age)"
    sql: ${TABLE}.father_one_parent_families_with_young_children ;;
  }

  dimension: female_10_to_14 {
    type: number
    description: "Female age 10 to 14. The female population between the age of ten years to fourteen years within the specified area."
    sql: ${TABLE}.female_10_to_14 ;;
  }

  dimension: female_15_to_17 {
    type: number
    description: "Female age 15 to 17. The female population between the age of fifteeen years to seventeen years within the specified area."
    sql: ${TABLE}.female_15_to_17 ;;
  }

  dimension: female_18_to_19 {
    type: number
    description: "Female age 18 and 19. The female population between the age of eighteen years to nineteen years within the specified area."
    sql: ${TABLE}.female_18_to_19 ;;
  }

  dimension: female_20 {
    type: number
    description: "Female age 20. The female population with an age of twenty years within the specified area."
    sql: ${TABLE}.female_20 ;;
  }

  dimension: female_21 {
    type: number
    description: "Female age 21. The female population with an age of twenty-one years within the specified area."
    sql: ${TABLE}.female_21 ;;
  }

  dimension: female_22_to_24 {
    type: number
    description: "Female age 22 to 24. The female population between the age of twenty-two years to twenty-four years within the specified area."
    sql: ${TABLE}.female_22_to_24 ;;
  }

  dimension: female_25_to_29 {
    type: number
    description: "Female age 25 to 29. The female population between the age of twenty-five years to twenty-nine years within the specified area."
    sql: ${TABLE}.female_25_to_29 ;;
  }

  dimension: female_30_to_34 {
    type: number
    description: "Female age 30 to 34. The female population between the age of thirty years to thirty-four years within the specified area."
    sql: ${TABLE}.female_30_to_34 ;;
  }

  dimension: female_35_to_39 {
    type: number
    description: "Female age 35 to 39. The female population between the age of thirty-five years to thirty-nine years within the specified area."
    sql: ${TABLE}.female_35_to_39 ;;
  }

  dimension: female_40_to_44 {
    type: number
    description: "Female age 40 to 44. The female population between the age of fourty years to fourty-four years within the specified area."
    sql: ${TABLE}.female_40_to_44 ;;
  }

  dimension: female_45_to_49 {
    type: number
    description: "Female age 45 to 49. The female population between the age of fourty-five years to fourty-nine years within the specified area."
    sql: ${TABLE}.female_45_to_49 ;;
  }

  dimension: female_50_to_54 {
    type: number
    description: "Female age 50 to 54. The female population between the age of fifty years to fifty-four years within the specified area."
    sql: ${TABLE}.female_50_to_54 ;;
  }

  dimension: female_55_to_59 {
    type: number
    description: "Female age 55 to 59. The female population between the age of fifty-five years to fifty-nine years within the specified area."
    sql: ${TABLE}.female_55_to_59 ;;
  }

  dimension: female_5_to_9 {
    type: number
    description: "Female age 5 to 9. The female population between the age of five years to nine years within the specified area."
    sql: ${TABLE}.female_5_to_9 ;;
  }

  dimension: female_60_to_61 {
    type: number
    description: "Female age 60 and 61. The female population between the age of sixty years to sixty-one years within the specified area."
    sql: ${TABLE}.female_60_to_61 ;;
  }

  dimension: female_62_to_64 {
    type: number
    description: "Female age 62 to 64. The female population between the age of sixty-two years to sixty-four years within the specified area."
    sql: ${TABLE}.female_62_to_64 ;;
  }

  dimension: female_65_to_66 {
    type: number
    description: "Female age 65 to 66. The female population between the age of sixty-five years to sixty-six years within the specified area."
    sql: ${TABLE}.female_65_to_66 ;;
  }

  dimension: female_67_to_69 {
    type: number
    description: "Female age 67 to 69. The female population between the age of sixty-seven years to sixty-nine years within the specified area."
    sql: ${TABLE}.female_67_to_69 ;;
  }

  dimension: female_70_to_74 {
    type: number
    description: "Female age 70 to 74. The female population between the age of seventy years to seventy-four years within the specified area."
    sql: ${TABLE}.female_70_to_74 ;;
  }

  dimension: female_75_to_79 {
    type: number
    description: "Female age 75 to 79. The female population between the age of seventy-five years to seventy-nine years within the specified area."
    sql: ${TABLE}.female_75_to_79 ;;
  }

  dimension: female_80_to_84 {
    type: number
    description: "Female age 80 to 84. The female population between the age of eighty years to eighty-four years within the specified area."
    sql: ${TABLE}.female_80_to_84 ;;
  }

  dimension: female_85_and_over {
    type: number
    description: "Female age 85 and over. The female population of the age of eighty-five years and over within the specified area."
    sql: ${TABLE}.female_85_and_over ;;
  }

  dimension: female_female_households {
    type: number
    description: "Households with two female partners. An unmarried partner is a person age 15 years and over, who is not related to the householder, who shares living quarters, and who has an intimate relationship with the householder."
    sql: ${TABLE}.female_female_households ;;
  }

  dimension: female_pop {
    type: number
    description: "Female Population. The number of people within each geography who are female."
    sql: ${TABLE}.female_pop ;;
  }

  dimension: female_under_5 {
    type: number
    description: "Female under 5 years. The female population over the age of five years within the specified area."
    sql: ${TABLE}.female_under_5 ;;
  }

  dimension: four_more_cars {
    type: number
    description: "Four car households. The number of households with four or more passenger cars, vans, pickup or panel trucks of one-ton capacity or less kept at home and available for the use of household members. Vehicles rented or leased for one month or more, company vehicles, and police and government vehicles are included if kept at home and used for non-business purposes. Dismantled or immobile vehicles ware excluded. Vehicles kept at home but used only for business purposes also are excluded."
    sql: ${TABLE}.four_more_cars ;;
  }

  dimension: geo_id {
    type: string
    description: "US Census Zip Code Tabulation Areas Geoids"
    sql: ${TABLE}.geo_id ;;
  }

  dimension: gini_index {
    type: number
    description: "Gini Index. The Gini index, or index of income concentration, is a statistical measure of income inequality ranging from 0 to 1. A measure of 1 indicates perfect inequality, i.e., one household having all the income and rest having none. A measure of 0 indicates perfect equality, i.e., all households having an equal share of income."
    sql: ${TABLE}.gini_index ;;
  }

  dimension: graduate_professional_degree {
    type: number
    description: "Population who completed a graduate or professional degree"
    sql: ${TABLE}.graduate_professional_degree ;;
  }

  dimension: group_quarters {
    type: number
    description: "Population living in group quarters"
    sql: ${TABLE}.group_quarters ;;
  }

  dimension: high_school_diploma {
    type: number
    description: "Population Completed High School. The number of people in a geographic area over the age of 25 who completed high school, and did not complete a more advanced degree."
    sql: ${TABLE}.high_school_diploma ;;
  }

  dimension: high_school_including_ged {
    type: number
    description: "Population with high school degree, including GED. The number of people in a geographic area over the age of 25 who attained a high school degree or GED."
    sql: ${TABLE}.high_school_including_ged ;;
  }

  dimension: hispanic_any_race {
    type: number
    description: "Hispanic of any race"
    sql: ${TABLE}.hispanic_any_race ;;
  }

  dimension: hispanic_male_45_54 {
    type: number
    description: "Hispanic Men age 45 to 54"
    sql: ${TABLE}.hispanic_male_45_54 ;;
  }

  dimension: hispanic_male_55_64 {
    type: number
    description: "Hispanic Men age 55 to 64"
    sql: ${TABLE}.hispanic_male_55_64 ;;
  }

  dimension: hispanic_pop {
    type: number
    description: "Hispanic Population. The number of people identifying as Hispanic or Latino in each geography."
    sql: ${TABLE}.hispanic_pop ;;
  }

  dimension: households {
    type: number
    description: "Households. A count of the number of households in each geography. A household consists of one or more people who live in the same dwelling and also share at meals or living accommodation, and may consist of a single family or some other grouping of people."
    sql: ${TABLE}.households ;;
  }

  dimension: households_public_asst_or_food_stamps {
    type: number
    description: "Households on cash public assistance or receiving food stamps (SNAP)"
    sql: ${TABLE}.households_public_asst_or_food_stamps ;;
  }

  dimension: households_retirement_income {
    type: number
    description: "Households receiving retirement income"
    sql: ${TABLE}.households_retirement_income ;;
  }

  dimension: housing_built_1939_or_earlier {
    type: number
    description: "Housing units built before 1939. A house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters built in 1939 or earlier."
    sql: ${TABLE}.housing_built_1939_or_earlier ;;
  }

  dimension: housing_built_2000_to_2004 {
    type: number
    description: "Housing units built between 2000 and 2004. A house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters built from 2000 to 2004."
    sql: ${TABLE}.housing_built_2000_to_2004 ;;
  }

  dimension: housing_built_2005_or_later {
    type: number
    description: "Housing units built in 2005 or later. A house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters built in 2005 or later."
    sql: ${TABLE}.housing_built_2005_or_later ;;
  }

  dimension: housing_units {
    type: number
    description: "Housing Units. A count of housing units in each geography.  A housing unit is a house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters."
    sql: ${TABLE}.housing_units ;;
  }

  dimension: housing_units_renter_occupied {
    type: number
    description: "Renter occupied housing units. All occupied units which are not owner occupied, whether they are rented for cash rent or occupied without payment of cash rent, are classified as renter-occupied."
    sql: ${TABLE}.housing_units_renter_occupied ;;
  }

  dimension: in_grades_1_to_4 {
    type: number
    description: "Students Enrolled in Grades 1 to 4. The total number of people in each geography currently enrolled in grades 1 through 4 inclusive.  This corresponds roughly to elementary school."
    sql: ${TABLE}.in_grades_1_to_4 ;;
  }

  dimension: in_grades_5_to_8 {
    type: number
    description: "Students Enrolled in Grades 5 to 8. The total number of people in each geography currently enrolled in grades 5 through 8 inclusive.  This corresponds roughly to middle school."
    sql: ${TABLE}.in_grades_5_to_8 ;;
  }

  dimension: in_grades_9_to_12 {
    type: number
    description: "Students Enrolled in Grades 9 to 12. The total number of people in each geography currently enrolled in grades 9 through 12 inclusive.  This corresponds roughly to high school."
    sql: ${TABLE}.in_grades_9_to_12 ;;
  }

  dimension: in_school {
    type: number
    description: "Students Enrolled in School. The total number of people in each geography currently enrolled at any level of school, from nursery or pre-school to advanced post-graduate education.  Only includes those over the age of 3."
    sql: ${TABLE}.in_school ;;
  }

  dimension: in_undergrad_college {
    type: number
    description: "Students Enrolled as Undergraduate in College. The number of people in a geographic area who are enrolled in college at the undergraduate level. Enrollment refers to being registered or listed as a student in an educational program leading to a college degree. This may be a public school or college, a private school or college."
    sql: ${TABLE}.in_undergrad_college ;;
  }

  dimension: income_100000_124999 {
    type: number
    description: "Households with income of $100,000 to $124,999. The number of households in a geographic area whose annual income was between $100,000 and $124,999."
    sql: ${TABLE}.income_100000_124999 ;;
  }

  dimension: income_10000_14999 {
    type: number
    description: "Households with income of $10,000 to $14,999. The number of households in a geographic area whose annual income was between $10,000 and $14,999."
    sql: ${TABLE}.income_10000_14999 ;;
  }

  dimension: income_125000_149999 {
    type: number
    description: "Households with income of $125,000 to $149,999. The number of households in a geographic area whose annual income was between $125,000 and $149,999."
    sql: ${TABLE}.income_125000_149999 ;;
  }

  dimension: income_150000_199999 {
    type: number
    description: "Households with income of $150,000 to $199,999. The number of households in a geographic area whose annual income was between $150,000 and $1999,999."
    sql: ${TABLE}.income_150000_199999 ;;
  }

  dimension: income_15000_19999 {
    type: number
    description: "Households with income of $15,000 to $19,999. The number of households in a geographic area whose annual income was between $15,000 and $19,999."
    sql: ${TABLE}.income_15000_19999 ;;
  }

  dimension: income_200000_or_more {
    type: number
    description: "Households with income of $200,000 Or More. The number of households in a geographic area whose annual income was more than $200,000."
    sql: ${TABLE}.income_200000_or_more ;;
  }

  dimension: income_20000_24999 {
    type: number
    description: "Households with income of $20,000 to $24,999. The number of households in a geographic area whose annual income was between $20,000 and $24,999."
    sql: ${TABLE}.income_20000_24999 ;;
  }

  dimension: income_25000_29999 {
    type: number
    description: "Households with income of $25,000 to $29,999. The number of households in a geographic area whose annual income was between $20,000 and $24,999."
    sql: ${TABLE}.income_25000_29999 ;;
  }

  dimension: income_30000_34999 {
    type: number
    description: "Households with income of $30,000 to $34,999. The number of households in a geographic area whose annual income was between $30,000 and $34,999."
    sql: ${TABLE}.income_30000_34999 ;;
  }

  dimension: income_35000_39999 {
    type: number
    description: "Households with income of $35,000 to $39,999. The number of households in a geographic area whose annual income was between $35,000 and $39,999."
    sql: ${TABLE}.income_35000_39999 ;;
  }

  dimension: income_40000_44999 {
    type: number
    description: "Households with income of $40,000 to $44,999. The number of households in a geographic area whose annual income was between $40,000 and $44,999."
    sql: ${TABLE}.income_40000_44999 ;;
  }

  dimension: income_45000_49999 {
    type: number
    description: "Households with income of $45,000 to $49,999. The number of households in a geographic area whose annual income was between $45,000 and $49,999."
    sql: ${TABLE}.income_45000_49999 ;;
  }

  dimension: income_50000_59999 {
    type: number
    description: "Households with income of $50,000 to $59,999. The number of households in a geographic area whose annual income was between $50,000 and $59,999."
    sql: ${TABLE}.income_50000_59999 ;;
  }

  dimension: income_60000_74999 {
    type: number
    description: "Households with income of $60,000 to $74,999. The number of households in a geographic area whose annual income was between $60,000 and $74,999."
    sql: ${TABLE}.income_60000_74999 ;;
  }

  dimension: income_75000_99999 {
    type: number
    description: "Households with income of $75,000 to $99,999. The number of households in a geographic area whose annual income was between $75,000 and $99,999."
    sql: ${TABLE}.income_75000_99999 ;;
  }

  dimension: income_less_10000 {
    type: number
    description: "Households with income less than $10,000. The number of households in a geographic area whose annual income was less than $10,000."
    sql: ${TABLE}.income_less_10000 ;;
  }

  dimension: income_per_capita {
    type: number
    description: "Per Capita Income in the past 12 Months. Per capita income is the mean income computed for every man, woman, and child in a particular group. It is derived by dividing the total income of a particular group by the total population."
    sql: ${TABLE}.income_per_capita ;;
  }

  dimension: less_one_year_college {
    type: number
    description: "Population completed less than one year of college, no degree. The number of people in a geographic area over the age of 25 who attended college for less than one year and no further."
    sql: ${TABLE}.less_one_year_college ;;
  }

  dimension: less_than_high_school_graduate {
    type: number
    description: "Less than high school graduate. The number of people in a geographic area over the age of 25 who have not completed high school or any other advanced degree."
    sql: ${TABLE}.less_than_high_school_graduate ;;
  }

  dimension: male_10_to_14 {
    type: number
    description: "Male age 10 to 14. The male population between the age of ten years to fourteen years within the specified area."
    sql: ${TABLE}.male_10_to_14 ;;
  }

  dimension: male_15_to_17 {
    type: number
    description: "Male age 15 to 17. The male population between the age of fifteeen years to seventeen years within the specified area."
    sql: ${TABLE}.male_15_to_17 ;;
  }

  dimension: male_18_to_19 {
    type: number
    description: "Male age 18 and 19. The male population between the age of eighteen years to nineteen years within the specified area."
    sql: ${TABLE}.male_18_to_19 ;;
  }

  dimension: male_20 {
    type: number
    description: "Male age 20. The male population with an age of twenty years within the specified area."
    sql: ${TABLE}.male_20 ;;
  }

  dimension: male_21 {
    type: number
    description: "Male age 21. The male population with an age of twenty-one years within the specified area."
    sql: ${TABLE}.male_21 ;;
  }

  dimension: male_22_to_24 {
    type: number
    description: "Male age 22 to 24. The male population between the age of twenty-two years to twenty-four years within the specified area."
    sql: ${TABLE}.male_22_to_24 ;;
  }

  dimension: male_25_to_29 {
    type: number
    description: "Male age 25 to 29. The male population between the age of twenty-five years to twenty-nine years within the specified area."
    sql: ${TABLE}.male_25_to_29 ;;
  }

  dimension: male_30_to_34 {
    type: number
    description: "Male age 30 to 34. The male population between the age of thirty years to thirty-four years within the specified area."
    sql: ${TABLE}.male_30_to_34 ;;
  }

  dimension: male_35_to_39 {
    type: number
    description: "Male age 35 to 39. The male population between the age of thirty-five years to thirty-nine years within the specified area."
    sql: ${TABLE}.male_35_to_39 ;;
  }

  dimension: male_40_to_44 {
    type: number
    description: "Male age 40 to 44. The male population between the age of fourty years to fourty-four years within the specified area."
    sql: ${TABLE}.male_40_to_44 ;;
  }

  dimension: male_45_64_associates_degree {
    type: number
    description: "Men age 45 to 64 who obtained an associate's degree"
    sql: ${TABLE}.male_45_64_associates_degree ;;
  }

  dimension: male_45_64_bachelors_degree {
    type: number
    description: "Men age 45 to 64 who obtained a bachelor's degree"
    sql: ${TABLE}.male_45_64_bachelors_degree ;;
  }

  dimension: male_45_64_grade_9_12 {
    type: number
    description: "Men age 45 to 64 who attained between 9th and 12th grade, no diploma"
    sql: ${TABLE}.male_45_64_grade_9_12 ;;
  }

  dimension: male_45_64_graduate_degree {
    type: number
    description: "Men age 45 to 64 who obtained a graduate or professional degree"
    sql: ${TABLE}.male_45_64_graduate_degree ;;
  }

  dimension: male_45_64_high_school {
    type: number
    description: "Men age 45 to 64 who completed high school or obtained GED"
    sql: ${TABLE}.male_45_64_high_school ;;
  }

  dimension: male_45_64_less_than_9_grade {
    type: number
    description: "Men age 45 to 64 who attained less than a 9th grade education"
    sql: ${TABLE}.male_45_64_less_than_9_grade ;;
  }

  dimension: male_45_64_some_college {
    type: number
    description: "Men age 45 to 64 who completed some college, no degree"
    sql: ${TABLE}.male_45_64_some_college ;;
  }

  dimension: male_45_to_49 {
    type: number
    description: "Men age 45 to 49. The male population between the age of fourty-five years to fourty-nine years within the specified area."
    sql: ${TABLE}.male_45_to_49 ;;
  }

  dimension: male_45_to_64 {
    type: number
    description: "Men age 45 to 64 (\"middle aged\"). The male population between the age of fourty-five years to sixty-four years within the specified area."
    sql: ${TABLE}.male_45_to_64 ;;
  }

  dimension: male_50_to_54 {
    type: number
    description: "Men age 50 to 54. The male population between the age of fifty years to fifty-four years within the specified area."
    sql: ${TABLE}.male_50_to_54 ;;
  }

  dimension: male_55_to_59 {
    type: number
    description: "Men age 55 to 59. The male population between the age of fifty-five years to fifty-nine years within the specified area."
    sql: ${TABLE}.male_55_to_59 ;;
  }

  dimension: male_5_to_9 {
    type: number
    description: "Male age 5 to 9. The male population between the age of five years to nine years within the specified area."
    sql: ${TABLE}.male_5_to_9 ;;
  }

  dimension: male_60_61 {
    type: number
    description: "Men age 60 to 61. The male population between the age of sixty years to sixty-one years within the specified area."
    sql: ${TABLE}.male_60_61 ;;
  }

  dimension: male_62_64 {
    type: number
    description: "Men age 62 to 64. The male population between the age of sixty-two years to sixty-four years within the specified area."
    sql: ${TABLE}.male_62_64 ;;
  }

  dimension: male_65_to_66 {
    type: number
    description: "Male age 65 to 66. The male population between the age of sixty-five years to sixty-six years within the specified area."
    sql: ${TABLE}.male_65_to_66 ;;
  }

  dimension: male_67_to_69 {
    type: number
    description: "Male age 67 to 69. The male population between the age of sixty-seven years to sixty-nine years within the specified area."
    sql: ${TABLE}.male_67_to_69 ;;
  }

  dimension: male_70_to_74 {
    type: number
    description: "Male age 70 to 74. The male population between the age of seventy years to seventy-four years within the specified area."
    sql: ${TABLE}.male_70_to_74 ;;
  }

  dimension: male_75_to_79 {
    type: number
    description: "Male age 75 to 79. The male population between the age of seventy-five years to seventy-nine years within the specified area."
    sql: ${TABLE}.male_75_to_79 ;;
  }

  dimension: male_80_to_84 {
    type: number
    description: "Male age 80 to 84. The male population between the age of eighty years to eighty-four years within the specified area."
    sql: ${TABLE}.male_80_to_84 ;;
  }

  dimension: male_85_and_over {
    type: number
    description: "Male age 85 and over. The male population of the age of eighty-five years and over within the specified area."
    sql: ${TABLE}.male_85_and_over ;;
  }

  dimension: male_male_households {
    type: number
    description: "Households with two male partners. An unmarried partner is a person age 15 years and over, who is not related to the householder, who shares living quarters, and who has an intimate relationship with the householder."
    sql: ${TABLE}.male_male_households ;;
  }

  dimension: male_pop {
    type: number
    description: "Male Population. The number of people within each geography who are male."
    sql: ${TABLE}.male_pop ;;
  }

  dimension: male_under_5 {
    type: number
    description: "Male under 5 years. The male population over the age of five years within the specified area."
    sql: ${TABLE}.male_under_5 ;;
  }

  dimension: management_business_sci_arts_employed {
    type: number
    description: "Civilian Employed Population in Management, Business, Science, and Arts Occupations. The number of employed civilians 16 years old and over in each geography in the Management, Business, Science, and Arts occupations. Occupation codes are based on the Standard Occupational Classification (SOC), published by the Executive Office of the President, Office of Management and Budget."
    sql: ${TABLE}.management_business_sci_arts_employed ;;
  }

  dimension: married_households {
    type: number
    description: "Married households. People in formal marriages, as well as people in common-law marriages, are included. Does not include same-sex marriages."
    sql: ${TABLE}.married_households ;;
  }

  dimension: masters_degree {
    type: number
    description: "Population Completed Master's Degree. The number of people in a geographic area over the age of 25 who obtained a master's degree, but did not complete a more advanced degree."
    sql: ${TABLE}.masters_degree ;;
  }

  dimension: median_age {
    type: number
    description: "Median Age. The median age of all people in a given geographic area."
    sql: ${TABLE}.median_age ;;
  }

  dimension: median_income {
    type: number
    description: "Median Household Income in the past 12 Months. Within a geographic area, the median income received by every household on a regular basis before payments for personal income taxes, social security, union dues, medicare deductions, etc.  It includes income received from wages, salary, commissions, bonuses, and tips; self-employment income from own nonfarm or farm businesses, including proprietorships and partnerships; interest, dividends, net rental income, royalty income, or income from estates and trusts; Social Security or Railroad Retirement income; Supplemental Security Income (SSI); any cash public assistance or welfare payments from the state or local welfare office; retirement, survivor, or disability benefits; and any other sources of income received regularly such as Veterans' (VA) payments, unemployment and/or worker's compensation, child support, and alimony."
    sql: ${TABLE}.median_income ;;
  }

  dimension: median_rent {
    type: number
    description: "Median Rent. The median contract rent within a geographic area. The contract rent is the monthly rent agreed to or contracted for, regardless of any furnishings, utilities, fees, meals, or services that may be included. For vacant units, it is the monthly rent asked for the rental unit at the time of interview."
    sql: ${TABLE}.median_rent ;;
  }

  dimension: median_year_structure_built {
    type: number
    description: "Median Year Structure Built. Median Year Structure Built"
    sql: ${TABLE}.median_year_structure_built ;;
  }

  dimension: million_dollar_housing_units {
    type: number
    description: "Owner-occupied Housing Units valued at $1,000,000 or more.. The count of owner occupied housing units in a geographic area that are valued at $1,000,000 or more.  Value is the respondent's estimate of how much the property (house and lot, mobile home and lot, or condominium unit) would sell for if it were for sale."
    sql: ${TABLE}.million_dollar_housing_units ;;
  }

  dimension: mobile_homes {
    type: number
    description: "Mobile homes. A manufactured home is defined as a movable dwelling, 8 feet or more wide and 40 feet or more long, designed to be towed on its own chassis, with transportation gear integral to the unit when it leaves the factory, and without need of a permanent foundation. These homes are built in accordance with the U.S. Department of Housing and Urban Development (HUD) building code."
    sql: ${TABLE}.mobile_homes ;;
  }

  dimension: mortgaged_housing_units {
    type: number
    description: "Owner-occupied Housing Units with a Mortgage. The count of housing units within a geographic area that are mortagaged. \"Mortgage\" refers to all forms of debt where the property is pledged as security for repayment of the debt, including deeds of trust, trust deed, contracts to purchase, land contracts, junior mortgages, and home equity loans."
    sql: ${TABLE}.mortgaged_housing_units ;;
  }

  dimension: no_car {
    type: number
    description: "Workers age 16 and over with no vehicle. All people in a geographic area over the age of 16 who do not own a car."
    sql: ${TABLE}.no_car ;;
  }

  dimension: no_cars {
    type: number
    description: "Car-free households. The number of households without passenger cars, vans, and pickup or panel trucks of one-ton capacity or less kept at home and available for the use of household members. Vehicles rented or leased for one month or more, company vehicles, and police and government vehicles are included if kept at home and used for non-business purposes. Dismantled or immobile vehicles ware excluded. Vehicles kept at home but used only for business purposes also are excluded."
    sql: ${TABLE}.no_cars ;;
  }

  dimension: nonfamily_households {
    type: number
    description: "Nonfamily Households. A householder living alone or with nonrelatives only. Unmarried couples households, whether opposite-sex or same-sex, with no relatives of the householder present are tabulated in nonfamily households."
    sql: ${TABLE}.nonfamily_households ;;
  }

  dimension: not_hispanic_pop {
    type: number
    description: "Population not Hispanic. The number of people not identifying as Hispanic or Latino in each geography."
    sql: ${TABLE}.not_hispanic_pop ;;
  }

  dimension: not_in_labor_force {
    type: number
    description: "Population Not in Labor Force. The number of people in each geography who are 16 years old and over who are not classified as members of the labor force. This category consists mainly of students, homemakers, retired workers, seasonal workers interviewed in an off season who were not looking for work, institutionalized people, and people doing only incidental unpaid family work (less than 15 hours during the reference week)."
    sql: ${TABLE}.not_in_labor_force ;;
  }

  dimension: not_us_citizen_pop {
    type: number
    description: "Not a U.S. Citizen Population. The number of people within each geography who indicated that they are not U.S. citizens."
    sql: ${TABLE}.not_us_citizen_pop ;;
  }

  dimension: occupation_management_arts {
    type: number
    description: "Workers employed in management business science and arts occupations"
    sql: ${TABLE}.occupation_management_arts ;;
  }

  dimension: occupation_natural_resources_construction_maintenance {
    type: number
    description: "Workers employed in natural resources, construction, and maintenance occupations"
    sql: ${TABLE}.occupation_natural_resources_construction_maintenance ;;
  }

  dimension: occupation_production_transportation_material {
    type: number
    description: "Workers employed in production, transportation, and material moving"
    sql: ${TABLE}.occupation_production_transportation_material ;;
  }

  dimension: occupation_sales_office {
    type: number
    description: "Workers employed in sales and office occupations"
    sql: ${TABLE}.occupation_sales_office ;;
  }

  dimension: occupation_services {
    type: number
    description: "Workers employed in service occupations"
    sql: ${TABLE}.occupation_services ;;
  }

  dimension: occupied_housing_units {
    type: number
    description: "Occupied housing units. A housing unit is classified as occupied if it is the usual place of residence of the person or group of people living in it at the time of enumeration."
    sql: ${TABLE}.occupied_housing_units ;;
  }

  dimension: one_car {
    type: number
    description: "One car households. The number of households with one passenger car, van, , pickup or panel trucks of one-ton capacity or less kept at home and available for the use of household members. Vehicles rented or leased for one month or more, company vehicles, and police and government vehicles are included if kept at home and used for non-business purposes. Dismantled or immobile vehicles ware excluded. Vehicles kept at home but used only for business purposes also are excluded."
    sql: ${TABLE}.one_car ;;
  }

  dimension: one_parent_families_with_young_children {
    type: number
    description: "One-parent families with young children (under 6 years of age)"
    sql: ${TABLE}.one_parent_families_with_young_children ;;
  }

  dimension: one_year_more_college {
    type: number
    description: "Population completed more than one year of college, no degree. The number of people in a geographic area over the age of 25 who attended college for more than one year but did not obtain a degree"
    sql: ${TABLE}.one_year_more_college ;;
  }

  dimension: other_race_pop {
    type: number
    description: "Other Race population. The number of people identifying as another race in each geography"
    sql: ${TABLE}.other_race_pop ;;
  }

  dimension: owner_occupied_housing_units {
    type: number
    description: "Owner-occupied Housing Units"
    sql: ${TABLE}.owner_occupied_housing_units ;;
  }

  dimension: owner_occupied_housing_units_lower_value_quartile {
    type: number
    description: "Owner-Occupied Housing Units Lower Value Quartile"
    sql: ${TABLE}.owner_occupied_housing_units_lower_value_quartile ;;
  }

  dimension: owner_occupied_housing_units_median_value {
    type: number
    description: "Owner-Occupied Housing Units Median Value. The middle value (median) in a geographic area owner occupied housing units."
    sql: ${TABLE}.owner_occupied_housing_units_median_value ;;
  }

  dimension: owner_occupied_housing_units_upper_value_quartile {
    type: number
    description: "Owner-Occupied Housing Units Upper Value Quartile"
    sql: ${TABLE}.owner_occupied_housing_units_upper_value_quartile ;;
  }

  dimension: percent_income_spent_on_rent {
    type: number
    description: "Percent of Household Income Spent on Rent. Within a geographic area, the median percentage of household income which was spent on gross rent.  Gross rent is the amount of the contract rent plus the estimated average monthly cost of utilities (electricity, gas, water, sewer etc.) and fuels (oil, coal, wood, etc.) if these are paid by the renter.  Household income is the sum of the income of all people 15 years and older living in the household."
    sql: ${TABLE}.percent_income_spent_on_rent ;;
  }

  dimension: pop_15_and_over {
    type: number
    description: "Population 15 Years and Over. The number of people in a geographic area who are over the age of 15.  This is used mostly as a denominator of marital status."
    sql: ${TABLE}.pop_15_and_over ;;
  }

  dimension: pop_16_over {
    type: number
    description: "Population age 16 and over. The number of people in each geography who are age 16 or over."
    sql: ${TABLE}.pop_16_over ;;
  }

  dimension: pop_25_64 {
    type: number
    description: "Population age 25 to 64. The number of people in each geography who are between the ages of 25 and 64."
    sql: ${TABLE}.pop_25_64 ;;
  }

  dimension: pop_25_years_over {
    type: number
    description: "Population 25 Years and Over. The number of people in a geographic area who are over the age of 25.  This is used mostly as a denominator of educational attainment."
    sql: ${TABLE}.pop_25_years_over ;;
  }

  dimension: pop_5_years_over {
    type: number
    description: "Population 5 Years and Over. The number of people in a geographic area who are over the age of 5.  This is primarily used as a denominator of measures of language spoken at home."
    sql: ${TABLE}.pop_5_years_over ;;
  }

  dimension: pop_determined_poverty_status {
    type: number
    description: "Population for Whom Poverty Status Determined. The number of people in each geography who could be identified as either living in poverty or not.  This should be used as the denominator when calculating poverty rates, as it excludes people for whom it was not possible to determine poverty."
    sql: ${TABLE}.pop_determined_poverty_status ;;
  }

  dimension: pop_divorced {
    type: number
    description: "Divorced. The number of people in a geographic area who are divorced"
    sql: ${TABLE}.pop_divorced ;;
  }

  dimension: pop_in_labor_force {
    type: number
    description: "Population in Labor Force. The number of people in each geography who are either in the civilian labor force or are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard)."
    sql: ${TABLE}.pop_in_labor_force ;;
  }

  dimension: pop_never_married {
    type: number
    description: "Never Married. The number of people in a geographic area who have never been married."
    sql: ${TABLE}.pop_never_married ;;
  }

  dimension: pop_now_married {
    type: number
    description: "Currently married. The number of people in a geographic area who are currently married"
    sql: ${TABLE}.pop_now_married ;;
  }

  dimension: pop_separated {
    type: number
    description: "Married but separated. The number of people in a geographic area who are married but separated"
    sql: ${TABLE}.pop_separated ;;
  }

  dimension: pop_widowed {
    type: number
    description: "Widowed. The number of people in a geographic area who are widowed"
    sql: ${TABLE}.pop_widowed ;;
  }

  dimension: population_1_year_and_over {
    type: number
    description: "Population 1 year and over. All people, male and female, child and adult, living in a given geographic area that are 1 year and older."
    sql: ${TABLE}.population_1_year_and_over ;;
  }

  dimension: population_3_years_over {
    type: number
    description: "Population 3 Years and Over. The total number of people in each geography age 3 years and over.  This denominator is mostly used to calculate rates of school enrollment."
    sql: ${TABLE}.population_3_years_over ;;
  }

  dimension: poverty {
    type: number
    description: "Income In The Past 12 Months Below Poverty Level. The number of people in a geographic area who are part of a family (which could be just them as an individual) determined to be \"in poverty\" following the Office of Management and Budget's Directive 14. (https://www.census.gov/hhes/povmeas/methodology/ombdir14.html)"
    sql: ${TABLE}.poverty ;;
  }

  dimension: rent_10_to_15_percent {
    type: number
    description: "Housing units spending 10 to 14.9% income on rent. Gross rent from 10.0 to 14.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_10_to_15_percent ;;
  }

  dimension: rent_15_to_20_percent {
    type: number
    description: "Housing units spending 15 to 19.9% income on rent. Gross rent from 15.0 to 19.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_15_to_20_percent ;;
  }

  dimension: rent_20_to_25_percent {
    type: number
    description: "Housing units spending 20 to 24.9% income on rent. Gross rent from 20.0 to 24.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_20_to_25_percent ;;
  }

  dimension: rent_25_to_30_percent {
    type: number
    description: "Housing units spending 25 to 29.9% income on rent. Gross rent from 25.0 to 29.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_25_to_30_percent ;;
  }

  dimension: rent_30_to_35_percent {
    type: number
    description: "Housing units spending 30 to 34.9% income on rent. Gross rent from 30.0 to 34.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_30_to_35_percent ;;
  }

  dimension: rent_35_to_40_percent {
    type: number
    description: "Housing units spending 35 to 39.9% income on rent. Gross rent from 35.0 to 39.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_35_to_40_percent ;;
  }

  dimension: rent_40_to_50_percent {
    type: number
    description: "Housing units spending 40 to 49.9% income on rent. Gross rent from 40.0 to 49.9 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_40_to_50_percent ;;
  }

  dimension: rent_burden_not_computed {
    type: number
    description: "Housing units without rent burden computed. Units for which no rent is paid and units occupied by households that reported no income or a net loss comprise this category"
    sql: ${TABLE}.rent_burden_not_computed ;;
  }

  dimension: rent_over_50_percent {
    type: number
    description: "Housing units spending over 50% income on rent. Gross rent over 50 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_over_50_percent ;;
  }

  dimension: rent_under_10_percent {
    type: number
    description: "Housing units spending less than 10% on rent. Gross rent less than 10 percent of household income. Computed ratio of monthly gross rent to monthly household income (total household income divided by 12). The ratio is computed separately for each unit and is rounded to the nearest tenth. Units for which no rent is paid and units occupied by households that report no income or a net loss comprise the category, \"Not computed\". Gross rent as a percentage of household income provides information on the monthly housing cost expenses for renters."
    sql: ${TABLE}.rent_under_10_percent ;;
  }

  dimension: renter_occupied_housing_units_paying_cash_median_gross_rent {
    type: number
    description: "Renter-Occupied Housing Units Paying Cash Rent Median Gross Rent"
    sql: ${TABLE}.renter_occupied_housing_units_paying_cash_median_gross_rent ;;
  }

  dimension: sales_office_employed {
    type: number
    description: "Civilian Employed Population in Sales and Office Occupations. The number of employed civilians 16 years old and over in each geography in the Sales and Office occupations. Occupation codes are based on the Standard Occupational Classification (SOC), published by the Executive Office of the President, Office of Management and Budget."
    sql: ${TABLE}.sales_office_employed ;;
  }

  dimension: some_college_and_associates_degree {
    type: number
    description: "Population who completed some college or obtained associate's degree. The number of people in a geographic area over the age of 25 who obtained an associate's degree, and did not complete a more advanced degree."
    sql: ${TABLE}.some_college_and_associates_degree ;;
  }

  dimension: speak_only_english_at_home {
    type: number
    description: "Speaks only English at Home. The number of people in a geographic area over age 5 who speak only English at home."
    sql: ${TABLE}.speak_only_english_at_home ;;
  }

  dimension: speak_spanish_at_home {
    type: number
    description: "Speaks Spanish at Home. The number of people in a geographic area over age 5 who speak Spanish at home, possibly in addition to other languages."
    sql: ${TABLE}.speak_spanish_at_home ;;
  }

  dimension: speak_spanish_at_home_low_english {
    type: number
    description: "Speaks Spanish at Home, speaks English less than \"very well\""
    sql: ${TABLE}.speak_spanish_at_home_low_english ;;
  }

  dimension: three_cars {
    type: number
    description: "Three car households. The number of households with one passenger cars, vans, pickup or panel trucks of one-ton capacity or less kept at home and available for the use of household members. Vehicles rented or leased for one month or more, company vehicles, and police and government vehicles are included if kept at home and used for non-business purposes. Dismantled or immobile vehicles ware excluded. Vehicles kept at home but used only for business purposes also are excluded."
    sql: ${TABLE}.three_cars ;;
  }

  dimension: total_pop {
    type: number
    description: "Total Population. The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."
    sql: ${TABLE}.total_pop ;;
  }

  dimension: two_cars {
    type: number
    description: "Two car households. The number of households with two passenger cars, vans, pickup or panel trucks of one-ton capacity or less kept at home and available for the use of household members. Vehicles rented or leased for one month or more, company vehicles, and police and government vehicles are included if kept at home and used for non-business purposes. Dismantled or immobile vehicles ware excluded. Vehicles kept at home but used only for business purposes also are excluded."
    sql: ${TABLE}.two_cars ;;
  }

  dimension: two_or_more_races_pop {
    type: number
    description: "Two or more races population. The number of people identifying as two or more races in each geography"
    sql: ${TABLE}.two_or_more_races_pop ;;
  }

  dimension: two_parent_families_with_young_children {
    type: number
    description: "Two-parent families with young children (under 6 years of age)"
    sql: ${TABLE}.two_parent_families_with_young_children ;;
  }

  dimension: two_parents_father_in_labor_force_families_with_young_children {
    type: number
    description: "Two-parent families, father only in labor force with young children (under 6 years of age)"
    sql: ${TABLE}.two_parents_father_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_in_labor_force_families_with_young_children {
    type: number
    description: "Two-parent families, both parents in labor force with young children (under 6 years of age)"
    sql: ${TABLE}.two_parents_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_mother_in_labor_force_families_with_young_children {
    type: number
    description: "Two-parent families, mother only in labor force with young children (under 6 years of age)"
    sql: ${TABLE}.two_parents_mother_in_labor_force_families_with_young_children ;;
  }

  dimension: two_parents_not_in_labor_force_families_with_young_children {
    type: number
    description: "Two-parent families, neither parent in labor force with young children (under 6 years of age)"
    sql: ${TABLE}.two_parents_not_in_labor_force_families_with_young_children ;;
  }

  dimension: unemployed_pop {
    type: number
    sql: ${TABLE}.unemployed_pop ;;
  }

  dimension: vacant_housing_units {
    type: number
    description: "Vacant Housing Units. The count of vacant housing units in a geographic area. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant."
    sql: ${TABLE}.vacant_housing_units ;;
  }

  dimension: vacant_housing_units_for_rent {
    type: number
    description: "Vacant Housing Units for Rent. The count of vacant housing units in a geographic area that are for rent. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant."
    sql: ${TABLE}.vacant_housing_units_for_rent ;;
  }

  dimension: vacant_housing_units_for_sale {
    type: number
    description: "Vacant Housing Units for Sale. The count of vacant housing units in a geographic area that are for sale. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant."
    sql: ${TABLE}.vacant_housing_units_for_sale ;;
  }

  dimension: walked_to_work {
    type: number
    description: "Walked to Work. The number of workers age 16 years and over within a geographic area who primarily walked to work.  This would mean that of any way of getting to work, they travelled the most distance walking."
    sql: ${TABLE}.walked_to_work ;;
  }

  dimension: white_including_hispanic {
    type: number
    description: "White including Hispanic"
    sql: ${TABLE}.white_including_hispanic ;;
  }

  dimension: white_male_45_54 {
    type: number
    description: "White Men age 45 to 54"
    sql: ${TABLE}.white_male_45_54 ;;
  }

  dimension: white_male_55_64 {
    type: number
    description: "White Men age 55 to 64"
    sql: ${TABLE}.white_male_55_64 ;;
  }

  dimension: white_pop {
    type: number
    description: "White Population. The number of people identifying as white, non-Hispanic in each geography."
    sql: ${TABLE}.white_pop ;;
  }

  dimension: worked_at_home {
    type: number
    description: "Worked at Home. The count within a geographical area of workers over the age of 16 who worked at home."
    sql: ${TABLE}.worked_at_home ;;
  }

  dimension: workers_16_and_over {
    type: number
    description: "Workers over the Age of 16. The number of people in each geography who work. Workers include those employed at private for-profit companies, the self-employed, government workers and non-profit employees."
    sql: ${TABLE}.workers_16_and_over ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
