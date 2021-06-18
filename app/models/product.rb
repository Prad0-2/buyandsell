class Product < ApplicationRecord
  belongs_to :user
  has_one :Payment
  has_one :Additional,dependent: :destroy
end
