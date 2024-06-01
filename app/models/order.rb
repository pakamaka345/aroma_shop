class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items

  # Статуси замовлень
  enum status: { pending: 'pending', completed: 'completed' }
end
