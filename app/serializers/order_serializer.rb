class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :payment_method, :phone_number, :created_at, :updated_at

  has_many :order_items
end
