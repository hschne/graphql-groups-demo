module Types
  class QueryType < Types::BaseObject
    include GraphQL::Groups
    field :movies, MovieType.connection_type, null: false

    def movies
      Movie.all
    end

    group :group_by, MovieGroupType, camelize: true
  end
end
