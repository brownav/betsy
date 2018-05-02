class CreateOrderProductJoin < ActiveRecord::Migration[5.1]
  def change
    create_table :order_product do |t|
      t.belongs_to :order, index: true
      t.belongs_to :product, index: true
    end
  end
end
