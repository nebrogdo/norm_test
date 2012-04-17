class PagesController < ApplicationController
  def home
      @title = "Home"
  end

  def contact
      @title = "Contact"
  end

  def product
      @title = "Product"
  end

end
