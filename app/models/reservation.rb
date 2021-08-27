class Reservation < ApplicationRecord
  belongs_to :user
  has_one :menu

  with_options presence: true do
    validates :menu_id, numericality: { other_than: 1}
    validates :date
    validates :time
    validates :user_id
    validates :people
    validates :total_price
  end
end
