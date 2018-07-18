class Product < ActiveRecord::Base
  attr_accessible :description, :product_id, :product_name, :product_no, :sellar_id
  self.primary_key = "product_id"
end
