class ProductsController < ApplicationController

before_action :authenticate_user!
  def new
  	@product = Product.new
  end

  def create
  	@product = admin_user.build_product(product_params)
  	if @product.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def show
  	@product = Product.find_by(id: params[:id])
  end

  def edit
  	@product = Product.find_by(id: params[:id])
  end

  def update
  	@product = Product.find_by(id: params[:id])
    if @product.update(product_params)
  		redirect_to product_path(@product.id)
  	else
  		render 'edit'
  	end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
  	@product.destroy 
  	redirect_to root_path
  end

private 
  def product_params
  	params.require(:product).permit(:product_id, :name, :description,  :photo, :categorie_id, :price, :pcount)
  end
end
