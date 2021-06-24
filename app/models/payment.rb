class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :product


  validates :user, :method,:product , presence: true
  
end
