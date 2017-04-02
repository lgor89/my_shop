class User < ActiveRecord::Base
  validates :name,presence: true
  has_many :orders
  has_many :products, through: :orders
end
