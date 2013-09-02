class Item < ActiveRecord::Base

  belongs_to :cart
  belongs_to :products

end
