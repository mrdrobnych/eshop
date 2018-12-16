# class PostsController < ApplicationController
# before_action :authenticate_user!
# before_action :set_post

#   def new
#     @post = Post.new
#   end
  
#   def create
#     params[:product_comment][:user_id] = current_user.id
#     params[:product_comment][:product_id] = @product.id
#     @comment = PostComment.new(post_params)
#     if @post.save
#       redirect_to product_path(@product.id)
#     else
#       render 'new'
#     end
    
#   end
  
#   def show
#   end
  
#   def edit
#   end
  
#   def update
#   end
  
#   def destroy
#   end
  
# private
#   def set_post
#     @product = Product.find_by(id: params[:product_id])
#   end
  
#   def comment_params
#     params.require(:product_comment).permit(:user_id, :product_id, :body)
#   end
# end

