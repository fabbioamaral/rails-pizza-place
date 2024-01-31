class OrderStatusValidator < ActiveModel::Validator
    STATUS = {
    preparing: 'preparing',
    on_transit: 'on_transit',
    cancelled: 'cancelled',
    done: 'done'
  }.freeze

  def validate(record)
    record.errors.add(:status, 'cancelled is immutable') if record.status_was == STATUS[:cancelled]
    record.errors.add(:status, 'done is immutable') if record.status_was == STATUS[:done]
  end
end