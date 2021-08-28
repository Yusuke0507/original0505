class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.date :arrival, null: false
      t.integer :number, null: false
      t.integer :product_name, null: false
      t.integer :product_price, null: false
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false
    end
  end
end
