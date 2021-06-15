json.extract! product, :id, :name, :category, :description, :buyer_id, :sold_out, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
