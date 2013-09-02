class Product < ActiveRecord::Base

  has_many :items
  has_many :carts, through: :items

end
