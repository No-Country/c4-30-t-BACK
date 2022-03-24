class User < ApplicationRecord
  has_many :products
  has_many :reviews
  #validates
  validates :first_name presence: true,
  validates :last_name presence: true,
  validates :email presence: true
end
