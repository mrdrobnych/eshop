class OrdersController < ApplicationController
before_action :authenticate_user!
before_action :set_product
	
  def index
  	@orders = current_user.orders
  end

  def new
    @order = Order.new
  end
  
  def create
    params[:order][:product_id] = @product.id
    @order = current_user.orders.build(order_params)
    if @order.save
      redirect_to product_path(@product.id)
    else
      render 'new'
    end    
  end
    
private
  def set_product
    @product = Product.find_by(id: params[:product_id])
  end
  
  def order_params
    params.require(:order).permit(:user_id, :product_id, :comment, :ordercount)
  end
end
