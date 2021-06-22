class HomeController < ApplicationController
  def index
    
    @products = Product.all.order("created_at Desc")
    @user = User.all
  end

  def show
    @products = Product.all    
    @productAvailable = Product.find_by(user_id: current_user.id)
    @payment = Payment.all
    @paymentAvailable = Payment.find_by(user_id: current_user.id)
  end

  def display
    @user = User.all
  end
end
