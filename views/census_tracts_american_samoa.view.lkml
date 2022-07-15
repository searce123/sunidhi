view: census_tracts_american_samoa {
  sql_table_name: `review_01.census_tracts_american_samoa`
    ;;

  dimension: area_land_meters {
    type: number
    description: "Current land area, in square meters"
    sql: ${TABLE}.area_land_meters ;;
  }

  dimension: area_water_meters {
    type: number
    description: "Current water area, in square meters"
    sql: ${TABLE}.area_water_meters ;;
  }

  dimension: county_fips_code {
    type: string
    description: "Four-digit county FIPS code.   County names and their corresponding FIPS codes can be found in BigQuery: bigquery-public-data.census_fips_codes.counties_2016"
    sql: ${TABLE}.county_fips_code ;;
  }

  dimension: functional_status {
    type: string
    description: "Current functional status of the Census tract"
    sql: ${TABLE}.functional_status ;;
  }

  dimension: geo_id {
    type: string
    description: "Census tract identifier; a concatenation of Current state FIPS code, county FIPS code, and census tract code"
    sql: ${TABLE}.geo_id ;;
  }

  dimension: internal_point_geo {
    type: string
    description: "Geographic representation of the state's internal point, which is the point at or closest to the tract's geographic center"
    sql: ${TABLE}.internal_point_geo ;;
  }

  dimension: internal_point_lat {
    type: string
    description: "Latitude of the state's internal point, which is the point at or closest to the state's geographic center"
    sql: ${TABLE}.internal_point_lat ;;
  }

  dimension: internal_point_lon {
    type: string
    description: "Longitude of the state's internal point, which is the point at or closest to the state's geographic center"
    sql: ${TABLE}.internal_point_lon ;;
  }

  dimension: lsad_name {
    type: string
    description: "Current translated legal/statistical area description and the census tract name"
    sql: ${TABLE}.lsad_name ;;
  }

  dimension: state_fips_code {
    type: string
    description: "Two digit FIPS code that uniquely identifies each state. State names and their corresponding FIPS codes are available as a BigQuery Public Dataset: bigquery-public-data.census_fips_codes.states_2016"
    sql: ${TABLE}.state_fips_code ;;
  }

  dimension: tract_ce {
    type: string
    description: "Current Census tract code"
    sql: ${TABLE}.tract_ce ;;
  }

  dimension: tract_geom {
    type: string
    description: "Geographical representation of the polygon that defines the perimeter of each Census tract. This column should be used as the GEO column for visualization in BigQuery Geo Viz"
    sql: ${TABLE}.tract_geom ;;
  }

  dimension: tract_name {
    type: string
    description: "Current census tract name, this is the census tract code converted to an integer or integer plus 2- character decimal if the last two characters of the code are not both zeros."
    sql: ${TABLE}.tract_name ;;
  }

  measure: count {
    type: count
    drill_fields: [tract_name, lsad_name]
  }
}
