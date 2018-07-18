class Sellar < ActiveRecord::Base
  attr_accessible :address_id, :person_id, :sellar_id
  self.primary_key = "sellar_id"
end
