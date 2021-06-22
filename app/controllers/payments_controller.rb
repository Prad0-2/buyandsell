class PaymentsController < ApplicationController
  def index

  end

  def show
    @product = Product.find(params[:id])
    @payment = Payment.find_by(product_id: params[:id])
    
    

  end

  def new
    @amount = Product.find(params[:id]).amount
    @@amt = @amount
    @payment = current_user.payments.new
    @product_id = params[:id]
    @@prad = params[:id]
  end

  def create
   
    @payment = current_user.payments.new
    @payment.method = payment_params
    @payment.amount = @@amt
    @payment.product_id = @@prad
    @payment.user_id = current_user.id
    @product = Product.find(@@prad)
    @product.buyer_id = @payment.user_id
    @product.sold_out = true
    @product.save
    if @payment.save 
      a = '/payments/show/'+@@prad.to_s
     redirect_to a
    else
      render 'new'
    end
  end

  private 
    def payment_params
      params.require(:payment).permit(:method)
    end

end
