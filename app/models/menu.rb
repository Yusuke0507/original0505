class Menu < ActiveHash::Base
  self.data = [
  { id: 1, name: '---', price: '0'},
  { id: 2, name: '季節のおまかせコース', price: '8800'},
  { id: 3, name: '海鮮鍋セットコース', price: '10800'},
  { id: 4, name: '季節のおまかせコース + 2時間飲み放題', price: '12800'},
  { id: 5, name: '海鮮鍋セットコース + 2時間飲み放題', price: '15000'}
  ]

  include ActiveHash::Associations
  has_many :reservations
end 
