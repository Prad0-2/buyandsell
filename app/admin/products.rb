ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :category, :description, :buyer_id, :sold_out, :user_id, :amount
  #
  # or
  #
  permit_params do
    permitted = [:name, :category, :description, :buyer_id, :sold_out, :user_id, :amount]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end
