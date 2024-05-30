class User < ApplicationRecord
  has_many :orders
  has_many :favourites
  has_many :reviews
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false, message: 'уже зайнятий'},
            length: { maximum: 105 },
            format: { with: VALID_EMAIL_REGEX }


  validates :username, presence: true, uniqueness: { message: 'Такий користувач вже існує'}
end
