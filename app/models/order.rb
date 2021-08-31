class Order < ApplicationRecord
  belongs_to :user
  has_many :products
  has_one_attached :image
end
