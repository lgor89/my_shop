class AddPictureToProducts < ActiveRecord::Migration
  def change
    add_column :products, :picture, :string
    add_column :products, :image, :string
  end
end
