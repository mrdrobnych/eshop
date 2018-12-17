class ProductsController < ApplicationController

  def show
  	@product = Product.find_by(id: params[:id])
    @comments = @product.posts
    @questions = @product.questions
  end

end
