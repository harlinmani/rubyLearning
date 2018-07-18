class Buyer < ActiveRecord::Base
  attr_accessible :address_id, :person_id, :product_id

  belongs_to :addresses
  belongs_to :people
  belongs_to :products
end
