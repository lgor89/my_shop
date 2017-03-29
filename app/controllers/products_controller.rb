class ProductsController < ApplicationController
  def index
    @product = Product.all

  end
  def new
    @product = Product.new

  end
  def create
    @product=Product.create(product_params)
    redirect_to root_path
  end
  private
  def product_params
    params.require(:product).permit(:name,:price,:picture)
  end
end
