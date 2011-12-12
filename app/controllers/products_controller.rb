class ProductsController < ApplicationController
  include ActionView::Helpers::NumberHelper
  def buybutton
    @product = Product.find(params[:id])
    @instock = @product.amount.to_i-params[:f].to_i
    if @instock > 0
      @product.amount = @instock
      @product.save
      redirect_to :action => "confirm"
    #else
     # redirect_to buy
    end
   
  end
  def show
    @title = "Home"
    @product = Product.find(params[:id])
    @dollar = @product.price/100
    @money = number_to_currency(@dollar)
  end
  
  def buy
     @product = ''
     @instock = ''
  end
  
  def confirm
    @title = "Order Confirmation"
    @product = Product.find(params[:id])
  end

end