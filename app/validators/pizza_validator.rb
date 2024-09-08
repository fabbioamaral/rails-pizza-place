class PizzaValidator < ActiveModel::Validator
    def validate(record)
        return unless record.pizza?

        validate_pizza_crust(record)
        validate_pizza_flavour(record)
        validate_pizza_size(record)
    end
    
    def validate_pizza_crust(record)
        return if record.pizza_border_id.present?
        record.errors.add(:pizza_border_id, "Missing pizza crust")
    end

    def validate_pizza_flavour(record)
        return if record.flavour1_id.present?
        record.errors.add(:flavour1_id, "Missing pizza flavour")
    end

    def validate_pizza_size(record)
        return if record.size.present?
        record.errors.add(:size, "Missing pizza size")
    end
end