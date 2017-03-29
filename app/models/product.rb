class Product < ActiveRecord::Base
  has_many :orders
  has_many :users, through: :orders
  mount_uploader :picture, PictureUploader
end
