class ProductsController < ApplicationController

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end


  def index
    @products = Product.all
  end

  def inventory
    product = Product.find(params[:id])
    if product.inventory > 0
      render plain: true
    else
      render plain: false
    end
  end
  
end
