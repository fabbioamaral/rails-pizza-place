module Categories
    class UpdateService
        attr_reader :update_category_attributes

        def initialize(update_category_attributes:)
            @category = Category.find(update_category_attributes.id)
        
            @name = update_category_attributes.name || @category.name
        end

        def process
            @category.update(
                name: @name
            )
            true
            rescue StandardError
                false
        end
    end
end

