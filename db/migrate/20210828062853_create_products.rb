class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :name
      t.text :image 
      t.text :volume
      t.references :order
      t.timestamps
    end
  end
end
