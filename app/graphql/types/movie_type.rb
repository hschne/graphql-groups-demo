module Types
  class MovieType < Types::BaseObject
    field :id, Integer

    field :imdb_id, Integer

    field :popularity, Integer

    field :budget, Integer

    field :revenue, Integer

    field :title, String

    field :runtime, Integer

    field :release_date, GraphQL::Types::ISO8601Date, null: true
  end
end
