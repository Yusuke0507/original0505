class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.time :time, null: false
      t.date :date, null: false
      t.integer :people, null: false
      t.text :remark
      t.integer :total_price, null: false
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.timestamps
    end
  end
end
