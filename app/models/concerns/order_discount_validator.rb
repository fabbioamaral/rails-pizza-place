class OrderDiscountValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:status, 'discount cannot be bigger than subtotal') if record.discount > record.subtotal
  end
end