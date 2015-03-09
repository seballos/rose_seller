class API::V1::ProductsController < ApplicationController

  def highlighted
    @products = Product.highlighted
    render :index
  end

end
