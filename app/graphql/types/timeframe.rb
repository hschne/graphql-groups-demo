module Types
  class Timeframe < BaseEnum
    value('WEEK', 'Time frame coresponding to a week', value: :week)
    value('MONTH', 'Time frame coresponding to a month', value: :month)
    value('YEAR', 'Time frame coresponding to a year', value: :year)
  end
end
