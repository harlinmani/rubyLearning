class Person < ActiveRecord::Base
  attr_accessible :email, :mobile, :name, :person_id
  self.primary_key = "person_id"
end
