class Product < ActiveRecord::Base
  #attr_accessible :description, :name
  self.primary_key='product_id'
end
