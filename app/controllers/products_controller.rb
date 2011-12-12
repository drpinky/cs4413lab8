class ProductsController < ApplicationController
  
  def show
    @product = Product.find(params[:id])
    @dollar = @product.price/100
    @cent = @product.price%100
  end
  
  def new
    @title = "No Products for Today!"
  end

end
