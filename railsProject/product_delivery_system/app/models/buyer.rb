class Buyer < ActiveRecord::Base
  attr_accessible :address_id, :person_id, :product_id
end
