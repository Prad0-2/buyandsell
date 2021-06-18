class PaymentsController < ApplicationController
  def index

  end

  def show
    @product = Product.find(params[:id])
    @payment = @product.payment

  end

  def new
    @amount = Product.find(params[:id]).amount
    @payment = current_user.payments.new
  end

  def create
    @payment = current_user.payments.new
    @payment.paymentMethod = payment_params
    @payment.amount = Product.find(session[:prod_id]).amount
    @payment.product_id = session[:prod_id]
    if @payment.save 
      
      redirect_to root_path(@payment.product)
    else
      render 'new'
    end
  end

  private 
    def payment_params
      params.require(:payment).permit(:paymentMethod)
    end

end
