view: betand_get_segment_flags {
  sql_table_name: etl.BetandGetSegmentFlags ;;

  dimension: football_stakes {
    type: string
    sql: ${TABLE}.FOOTBALL_STAKES ;;
  }

  dimension: racing_stakes {
    type: string
    sql: ${TABLE}.RACING_STAKES ;;
  }

  dimension: sports_mix {
    type: string
    sql: ${TABLE}.Sports_mix ;;
  }

  dimension: total_sports_stakes {
    type: string
    sql: ${TABLE}.TOTAL_SPORTS_STAKES ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [username]
  }
}
