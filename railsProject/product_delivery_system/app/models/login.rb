class Login < ActiveRecord::Base
  attr_accessible :password, :person_id, :username
  self.primary_key = "username"

  belongs_to :people
end
