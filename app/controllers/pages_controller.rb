class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @product = Product.find(params[1])
    @title = "About"
  end

end
