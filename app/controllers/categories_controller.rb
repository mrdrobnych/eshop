class CategoriesController < ApplicationController

  def show
    @categorie = Categorie.find_by(id: params[:id])
    @products = Product.where(categorie_id: @categorie.id)
  end

  
end
