# frozen_string_literal: true

module Types
  class MovieGroupResultType < GraphQL::Groups::Schema::GroupResultType
    aggregate :sum do
      attribute :budget
      attribute :revenue
      attribute :runtime
    end

    aggregate :max do
      attribute :budget
      attribute :revenue
      attribute :runtime
    end

    aggregate :min do
      attribute :budget
      attribute :revenue
      attribute :runtime
    end

    aggregate :avg do
      attribute :budget
      attribute :revenue
      attribute :runtime
    end

    def max(scope:, attribute:)
      scope.maximum(attribute)
    end

    def min(scope:, attribute:)
      scope.minimum(attribute)
    end

    def avg(scope:, attribute:)
      scope.average(attribute)
    end
  end
end
