module Types
  class QueryType < Types::BaseObject
    field :movies, MovieType.connection_type, null: false

    def movies
      Movie.all
    end
  end
end
