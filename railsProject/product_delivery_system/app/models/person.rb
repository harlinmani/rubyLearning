class Person < ActiveRecord::Base
  attr_accessible :email, :mobile, :name, :person_id
  self.primary_key = "person_id"

  has_one :login

  has_many :addresses

  has_many :sellars

  has_many :buyers


end
