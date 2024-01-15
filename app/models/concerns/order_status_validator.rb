class OrderStatusValidator << ActiveModel::Validator
  STATUS = {
    preparing: 'preparing',
    on_transit: 'on_transit',
    cancelled: 'cancelled',
    done: 'done'
  }.freeze

  def initialize
    @record = record
  end

  def validate(record)
    if check_tried_to_change_cancelled_status || check_tried_to_change_done_status
      @record.errors.add(:status, 'this status is immutable')
    end
  end

  def check_tried_to_change_cancelled_status
    if @record.status_before_last_save == STATUS[:cancelled] && (@record.status == STATUS[:preparing] || @record.status == STATUS[:on_transit] || @record.status == STATUS[:done])
      true
    end
    false
  end

  def check_tried_to_change_done_status
    if @record.status_before_last_save == STATUS[:done] && (@record.status == STATUS[:preparing] || @record.status == STATUS[:on_transit] || @record.status == STATUS[:cancelled])
      true
    end
    false
  end
end