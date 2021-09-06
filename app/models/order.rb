class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_one_attached :image

  with_options presence: true do
    validates :arrival
    validates :number
    validates :product_name
    validates :product_price
    validates :user_id
    validates :product_id
  end
end
