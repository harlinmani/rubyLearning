class Dispatcher < ActiveRecord::Base
  attr_accessible :address_id, :status, :dispatcher_id, :product_id, :quantity
  self.primary_key = "dispatcher_id"

  belongs_to :products
  belongs_to :addresses
end
