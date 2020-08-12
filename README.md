# Demo for GraphQL Groups

To showcase [graphql-groups](https://github.com/hschne/graphql-groups) this demo project allows you to retrive statistical
data surrounding a dataset of movies. 

Movies have attributes like revenue, their release date and so on. See the queries below for some inspiration of what kind
of information you can retrieve. 

Then check [`movie_group_type`](./app/graphql/types/movie_group_type.rb) and  [`movie_group_result_type`](./app/graphql/types/movie_group_result_type.rb) 
for the implementation.

#### Movie count per on runtime

```graphql
query runtimeCount{
  groupBy {
    runtime {
      key
      count
    }
  }
}
```

#### Average revenue of all movies per year

```graphql
query revenueAverage{
  groupBy {
     releaseDate(timeframe:YEAR) {
      key
      avg {
        revenue
      }
    }
  }
}
```

#### Movies per rating per year, as well as minumum and maximum budget per group

```graphql
query yearRatingBudgets {
  groupBy {
     releaseDate(timeframe:YEAR) {
      key
      groupBy {
        popularity {
          key
          count
          max {
            budget
          }
          min {
            budget
          }
        }
      }
    }
  }
}
```
