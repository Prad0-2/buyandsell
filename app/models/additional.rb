class Additional < ApplicationRecord
  belongs_to :product

  validates :color , :product_age , :waranty , :condition , presence:true
end
