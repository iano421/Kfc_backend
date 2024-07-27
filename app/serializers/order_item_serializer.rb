class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :order_id
end
