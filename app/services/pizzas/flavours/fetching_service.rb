module Pizzas
    module Flavours
        class FetchingService
            attr_reader :size

            def initialize(size:)
                @size = size
            end

            def process
                category_flavours_available = get_category_flavours_available_by_size(size: size)
                flavours = Flavour.where(:category_flavour_id => category_flavours_available.map(&:id))
                flavours.map do |flavour|
                    category = category_flavours_available.find {|category| category.id == flavour.category_flavour_id}
                    {
                        id: flavour.id,
                        name: flavour.name,
                        price: category.price,
                        category_flavour_id: category.id,
                        category_flavour_name: category.name
                    }
                end
                rescue StandardError
                    []
            end

            def get_category_flavours_available_by_size(size:)
                case size
                when 'small'
                    CategoryFlavour.small
                when 'regular'
                    CategoryFlavour.regular
                when 'large'
                    CategoryFlavour.large
                when 'extra_large'
                    CategoryFlavour.extra_large
                end
              end
        end
    end
end

