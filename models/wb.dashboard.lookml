- dashboard: wb
  title: Wb
  layout: tile
  tile_size: 100

  filters:


  - title: dashboard1
    name: dashboard1
    model: viamerica_demo1
    explore: owner_credit_score
    type: looker_scatter
    fields: [owner_credit_score.int64_field_2, owner_credit_score.count]
    sorts: [owner_credit_score.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 8
    width: 8
    height: 6
