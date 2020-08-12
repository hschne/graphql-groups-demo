GraphiQL::Rails.config.title = 'graphql-groups-demo'
GraphiQL::Rails.config.initial_query = <<~GRAPHQL
  # Welcome to the graphql-groups demo project! 

  # For some more info have a look here: https://github.com/hschne/graphql-groups-demo

  # You can play around here to see how it works. For example, to find out how many movies were released each year
  # you can use this query.
  query moviesPerYear{
    groupBy {
       releaseDate(timeframe:YEAR) {
        key
        count
      }
    }
  }

GRAPHQL
