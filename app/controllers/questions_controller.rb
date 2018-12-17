class QuestionsController < ApplicationController
before_action :authenticate_user!
before_action :set_product

  def new
    @question = Question.new
  end
  
  def create
    params[:question][:product_id] = @product.id
    @question = current_user.questions.build(question_params)
    if @question.save
      redirect_to product_path(@product.id)
    else
      render 'new'
    end
    
  end
    
private
  def set_product
    @product = Product.find_by(id: params[:product_id])
  end
  
  def question_params
    params.require(:question).permit(:user_id, :product_id, :body)
  end
end
