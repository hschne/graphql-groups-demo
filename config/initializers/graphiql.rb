GraphiQL::Rails.config.title = 'graphql-groups-demo'
GraphiQL::Rails.config.initial_query = <<~GRAPHQL
  # Welcome to the graphql-groups demo project! 

  # For some more info have a look here: https://github.com/hschne/graphql-groups-demo

  # You can play around here to see how it works. For example, to retrieve formation about the number of movies per year
  # you can use this query.
  query statistics1 {
    movies(first: 100) {
      nodes {
        id
        title
      }
    }
  }
GRAPHQL
