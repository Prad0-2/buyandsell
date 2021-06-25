module Api
    # module V1
        class ProductsController < ApplicationController
            # protect_from_forgery with: :null_session
            respond_to :json

            def index
            respond_with Product.all
            end

            def create
      
                puts "oeihheoihroierhoiehoiwihow
              
              
                #{params}
              
               oegruegriuwegriueg "
              
              respond_with Product.create(product_params)
              
              end  
              
              def show
                respond_with Product.find(params[:id])
              end  
              
              def destroy
                if Product.find_by(id: params[:id]).nil?
                  respond_with "Cant find the data"
                else
                  respond_with Product.find(params[:id]).destroy
                end
              end
              
              
              def update
                product=Product.find(params[:id])
                product.update(name:params[:name])
                puts "kfuugu
                fyfyfy
                ifyiyf"
              
              
                puts product.errors.full_messages
              end  
              
              private 
              def  product_params
                res={}
                res[:name] = params[:name]
                res[:category]=params[:category]
                res[:description]=params[:description]
                res[:user_id]=params[:user_id]
                res[:amount]=params[:amount]
                return res
              end 

            
        

        end
    # end
end