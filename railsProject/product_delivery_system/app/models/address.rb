class Address < ActiveRecord::Base
  attr_accessible :address, :address_id, :city, :country, :integer, :person_id, :pin, :state
  self.primary_key = "address_id"
end
