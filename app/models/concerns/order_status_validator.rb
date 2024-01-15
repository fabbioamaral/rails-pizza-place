class OrderStatusValidator << ActiveModel::Validator
    def validate(record)
      if record.status
        record.errors.add(:compactness, “is too high to safely dispatch”)
      end
    end
  end