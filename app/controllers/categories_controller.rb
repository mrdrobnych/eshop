class CategoriesController < ApplicationController

before_action :authenticate_user!
  def new
    @categorie = Categorie.new
  end

  def create
  	@product = admin_user.build_categorie(categorie_params)
  	if @categorie.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def show
    @categorie = Categorie.find_by(id: params[:id])
  end

  def edit
    @categorie = Categorie.find_by(id: params[:id])
  end

  def update
    @categorie = Categorie.find_by(id: params[:id])
    if @categirie.update(categorie_params)
  		redirect_to categorie_path(@categorie.id)
  	else
  		render 'edit'
  	end
  end

  def destroy
    @categorie = Categorie.find_by(id: params[:id])
  	@categorie.destroy 
  	redirect_to root_path
  end

private 
  def categorie_params
  	params.require(:categorie).permit(:categorie_id, :name)
  end
end
