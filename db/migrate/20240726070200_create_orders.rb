class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :payment_method
      t.string :phone_number

      t.timestamps
    end
  end
end
