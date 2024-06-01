class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_many :reviews
  has_many :favourites
  has_many :order_items
  has_many :orders, through: :order_items
end
