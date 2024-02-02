module Orders
    class OrderDeliveryFeeValidator < ActiveModel::Validator
        ORDER_TYPE = {
            in_person: 'in_person',
            delivery: 'delivery',
          }.freeze
      
        def validate(record)
        record.errors.add(:delivery_fee, 'cannot be bigger than total_price') if ((record.delivery_fee.present? && record.total_price.present?) && record.delivery_fee > record.total_price)
        record.errors.add(:delivery_fee, 'has to be 0 or null in case order_type is in_person') if (record.order_type == ORDER_TYPE[:in_person] && (record.delivery_fee != 0 && record.delivery_fee.presnet?))
    end
    end
  end
  