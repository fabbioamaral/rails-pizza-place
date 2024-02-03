module Categories
    class CreationService
        attr_reader :add_category_attributes

        def initialize(add_category_attributes:)
            @name = add_category_attributes.name
        end

        def process
            category = Category.create(
                name: @name
            )
            { :status => true, :id => category.id }
            rescue StandardError
                false
        end
    end
end

