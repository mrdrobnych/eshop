class PostsController < ApplicationController
before_action :authenticate_user!
before_action :set_product

  def new
    @comment = Post.new
  end
  
  def create
    params[:post][:product_id] = @product.id
    @comment = current_user.posts.build(post_params)
    if @comment.save
      redirect_to product_path(@product.id)
    else
      render 'new'
    end
    
  end
    
private
  def set_product
    @product = Product.find_by(id: params[:product_id])
  end
  
  def post_params
    params.require(:post).permit(:user_id, :product_id, :body)
  end
end

