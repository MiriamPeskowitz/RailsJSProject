class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :soupkitchens, through: :comments

  validates_presence_of :first_name, :last_name, :password


end
