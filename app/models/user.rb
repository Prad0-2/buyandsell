class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :payments , dependent: :destroy
  has_many :products , dependent: :destroy

  validates :number, length: { is: 10 ,message: "Enter a valid Mobile Number" },on: :update

  validates :number, numericality: {  message: "only allows digits"}, uniqueness: true ,on: :update
  
  validates :name , :address , length: { minimum: 3 , message: "Enter a valid %{attribute}"} ,on: :update

  validates :name , :address , :number , presence: true, on: :update
end
 
