module Categories
    class DeletionService
        attr_reader :id

        def initialize(id:)
            @id = id
        end

        def process
            Category.find(@id).destroy
            true
            rescue StandardError
                false
        end
    end
end

