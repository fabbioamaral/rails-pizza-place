class PizzaValidator < ActiveModel::Validator
    def validate(record)
        return unless record.pizza?

        validate_pizza_crust(record)
    end
    
    def validate_pizza_crust(record)
        return if record.pizza_border_id.present?

        record.errors.add(:pizza_border_id, "Missing pizza crust")
    end
end