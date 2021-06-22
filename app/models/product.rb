class Product < ApplicationRecord
  belongs_to :user
  has_one :Payment,dependent: :destroy 
  has_one :Additional,dependent: :destroy 
end



