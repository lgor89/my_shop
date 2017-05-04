class User < ActiveRecord::Base
  has_secure_password
  validates :name,presence: true,uniqueness: true
  validates :email,uniqueness: true,presence: true
  has_many :orders
  has_many :products, through: :orders
end
