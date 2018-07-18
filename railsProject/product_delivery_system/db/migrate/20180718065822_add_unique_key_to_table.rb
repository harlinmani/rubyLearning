class AddUniqueKeyToTable < ActiveRecord::Migration
  def change
  	
  	execute('ALTER TABLE people ADD CONSTRAINT people_mobile_key UNIQUE KEY (mobile)')
  	execute('ALTER TABLE people ADD CONSTRAINT people_email_key UNIQUE KEY (email)')
  	execute('ALTER TABLE logins ADD CONSTRAINT logins_person_key UNIQUE KEY (person_id)')
  	execute('ALTER TABLE sellars ADD CONSTRAINT sellar_composit_key UNIQUE KEY (person_id,address_id)')

  end
end
