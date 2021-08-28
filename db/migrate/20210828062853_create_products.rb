class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :product_price
      t.string :product_name
      t.text :image 
      t.timestamps
    end
  end
end
