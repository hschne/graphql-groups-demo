module Types
  class BaseField < GraphQL::Schema::Field
    argument_class Types::BaseArgument

    def initialize(*args, null: false, **kwargs, &block)
      super
    end
  end
end
