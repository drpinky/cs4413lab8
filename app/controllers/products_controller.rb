class ProductsController < ApplicationController
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @title = "No Products for Today!"
  end

end
