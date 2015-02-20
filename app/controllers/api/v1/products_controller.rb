class API::V1::ProductsController < ApplicationController

  def highlight_products
    products = Product.highlighted
    respond_to do |f|
      f.json { render json: products.to_builder, status: :ok}
      f.xml {render xml: products, status: :ok}
    end
  end

end
