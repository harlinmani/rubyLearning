class Address < ActiveRecord::Base
  attr_accessible :address, :address_id, :city, :country, :integer, :person_id, :pin, :state
  self.primary_key = "address_id"

  belongs_to :people

  has_many :sellars
  has_many :buyers
  has_many :dispatchers
end
