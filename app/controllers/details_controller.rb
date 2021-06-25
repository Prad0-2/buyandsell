class DetailsController < ApplicationController
  before_action :authenticate_user!
   
  def index
    user = User.find(params[:id])
    @products = @user.products
    @purchasedProduct = Product.where(buyerId: @user.id)
  end
  def show
    render '/payments/new'
  end
  def edit
    @product_id = params[:product_id]
    @@productId = params[:product_id]
    @detail = User.find(params[:id]) 
    @@detail_id = params[:id]
  end
  
  def update
    @detail = User.find(@@detail_id)
    
    respond_to do |format|
      if @detail.update(detail_params)
        a = '/products/'+@@productId +'/payment'
        format.html { redirect_to a }
      else
        format.html { render 'edit' }
      end
    end
  end

  private 
    def detail_params
      params.require(:user).permit(:name, :email, :number ,:address)
    end

end
