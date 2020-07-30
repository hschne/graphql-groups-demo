GraphiQL::Rails.config.title = 'graphql-groups-demo'
GraphiQL::Rails.config.initial_query = <<~GRAPHQL
  # Retrieve information about the number of movies per year, or the average revenue of movies
  query {
      movies(first: 100) {
        nodes {
          id
          title
        }
      }
    }
GRAPHQL
