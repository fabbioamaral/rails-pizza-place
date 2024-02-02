module Orders
  class OrderSubtotalValidator < ActiveModel::Validator
      def validate(record)
        record.errors.add(:subtotal, 'cannot be bigger than total_price') if ((record.subtotal.present? && record.total_price.present?) && record.subtotal > record.total_price)
      end
  end
end
