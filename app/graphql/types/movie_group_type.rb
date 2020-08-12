# frozen_string_literal: true

module Types
  class MovieGroupType < GraphQL::Groups::Schema::GroupType
    scope { Movie.all }

    by :popularity

    by :budget

    by :revenue

    by :runtime

    by :release_date do
      argument :timeframe, Timeframe, required: false
    end

    def popularity(scope:)
      scope.group('round(popularity * 2, 0) / 2')
    end

    def runtime(scope:)
      scope.group("(cast(runtime/10 as int) * 10) || '-' || ((cast(runtime/10 as int) + 1) * 10)")
    end

    def release_date(scope:, timeframe: :year)
      scope.group_by_period(timeframe, :release_date)
    end
  end
end
