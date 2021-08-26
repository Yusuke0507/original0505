class Reservation < ApplicationRecord
  belongs_to :user
  has_one :menu

  with_options presence: true do
    validates :menu, numericality: { other_than: 1}
    validates :date
    validates :time
    validates :user_id
    validates :people
  end
end
